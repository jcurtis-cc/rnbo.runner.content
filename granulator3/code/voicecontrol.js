// vim: set sw=2 ts=2 expandtab:
const VOICES = 16;
const INVALID_NOTE = 255;
const BANKS = 128 / 8;

@state parser = new midiparse();
@state notes = new FixedUint8Array(VOICES);
@state down = new FixedUint8Array(BANKS);

@state allocindex: Int = 0;
@state note_index = new FixedIntArray(VOICES);
@state voicelimit = 8;
@state mono = 0.0;
@state hold = 0.0;

@param midichan = 0;
@param usekeypressure = 0;
@param usempe = 0;

let bytein = in1;
let m = parser.next(bytein);

function startup() {
  for (let i = 0; i < VOICES; i++) {
    notes[i] = INVALID_NOTE;
  }

  //mute all voices
  listout2 = [0, 1];
}

//voice complete
function in2(voice: number) {
  if (voice > 0 && voice <= VOICES) {
    notes[voice - 1] = INVALID_NOTE;
    listout2 = [voice, 1]; //mute
  }
}

//limit
function in3(limit: number) {
  //if we're removing voices, send reset
  for (let voice = limit; voice < voicelimit; voice++) {
    out3 = voice + 1; //1 index
    out1 = 0xFF; //MIDI reset
    notes[voice] = INVALID_NOTE;
  }
  voicelimit = limit;
}

//mono mode
function in4(monomode: number) {
  //turn off existing voices
  if (mono) {
    out3 = 1; //1 index
    out1 = 0xFF; //MIDI reset
  } else {
    for (let voice = 0; voice < voicelimit; voice++) {
      out3 = voice + 1; //1 index
      out1 = 0xFF; //MIDI reset
      notes[voice] = INVALID_NOTE;
    }
  }
  listout2 = [0, 1]; //mute all

  mono = monomode;
  out4 = mono + 1; //one based mode
}

//hold
function in5(v: number) {
  hold = v;

  //reset notes in poly mode if hold goes off
  if (hold < 1.0 && mono < 1.0) {
    //TODO can we do some better detection here?
    for (let voice = 0; voice < voicelimit; voice++) {
      out3 = voice + 1; //1 index
      out1 = 0xFF; //MIDI reset
      notes[voice] = INVALID_NOTE;
    }
    out4 = mono + 1; //do mode switching reset..
  }
}

function getactivevoice(num: number) {
  if (mono) {
    return 1;
  }
  for (let i = 0; i < voicelimit; i++) {
    if (notes[i] == num) {
      return i + 1;
    }
  }
  return 0;
}

//for LRU counting
function markindex(voice: number) {
  note_index[voice] = allocindex;
  allocindex++;
}

//basic LRU stealing
function stealvoice(num: number): number {
  let voice = 0;
  let index = note_index[0];

  //find the lowest index
  for (let i = 1; i < voicelimit; i++) {
    if (note_index[i] < index) {
      voice = i;
      index = note_index[i];
    }
  }
  return voice;
}

//allocate if voice on
function getvoice(num: number, vel: number, chan: number): number {
  if (mono) {
    return 1;
  }

  if (usempe > 0) {
    num = chan;
  }

  let active = getactivevoice(num);
  if (vel <= 0) {
    return active;
  } else if (active) {
    return active; //we already have an active voice with that num, just re-use
  }

  //find inactive
  let voice = -1;
  for (let i = 0; i < voicelimit; i++) {
    if (notes[i] == INVALID_NOTE) {
      voice = i;
      break;
    }
  }

  //steal voice if we need to
  if (voice < 0) {
    voice = stealvoice(num);
  }

  notes[voice] = num;
  markindex(voice);
  return voice + 1;
}


function send3byte(m: list, offset: number) {
  //raw data is at the end of the list
  for (let i = 0; i < 3; i++) {
    out1 = m[offset + i];
  }
}

function ismidichan(m: number): number {
  if (usempe > 0) {
    //TODO zones
    return m > 0;
  }
  return midichan == 0 || m == midichan;
}

switch (m[0]) {
  case 0: //note
    {
      let num = m[1];
      let vel = m[2];
      let chan = m[3];
      if (ismidichan(chan)) {

        let bank = num / 8;
        let index = num % 8;
        let mask = (1 << index);

        let newnote = 0;
        if (vel > 0) {
          newnote = 1;
          for (let b = BANKS - 1; b >= 0; b--) {
            if (down[b] != 0) {
              newnote = 0;
              break;
            }
          }
          down[bank] |= mask;
        } else {
          down[bank] &= ~mask;
        }

        let voice = getvoice(num, vel, chan);
        if (voice > 0) {
          out3 = voice;
          if (vel > 0) {
            listout2 = [voice, 0]; //unmute
            send3byte(m, 4);

            //if this is a new note and we're in hold mode
            //send note offs for all other active voices
            //only in poly mode
            if (newnote > 0 && hold > 0 && mono < 1) {
              let off: list = [0x80, 0, 0];
              for (let i = 0; i < voicelimit; i++) {
                let note = notes[i];
                if (i + 1 != voice && note != INVALID_NOTE) {
                  out3 = i + 1; //target
                  off[1] = note;
                  send3byte(off, 0);
                }
              }
            }

          } else if (hold < 1 || mono > 0) {
            send3byte(m, 4); //don't sent note off in hold mode, mono deals with it itself
          }
        }
      }
    }
    break;
  case 1: //key pressure
    {
      let chan = m[3];
      if (ismidichan(chan) && usekeypressure) {
        //using 5 & 6 because midiparse or midiformat are broken 
        let num = m[5];
        //if there is an active voice
        let voice = getactivevoice(usempe == 0 ? num : chan);
        if (voice > 0) {
          out3 = voice;

          let val = m[6];
          //convert to aftertouch
          out1 = 0xD0 | (chan - 1);
          out1 = val;
        }
      }
    }
    break;
  case 2: //cc
    {
      let chan = m[3];
      if (ismidichan(chan)) {
        if (usempe > 0) {
          let voice = getactivevoice(chan);
          if (voice > 0) {
            out3 = voice;
            send3byte(m, 4);
          }
        } else {
          out3 = 0; //all voices, TODO only send to the voice that needs it?
          send3byte(m, 4);
        }
      }
    }
    break;
  case 4: //channel pressure
    {
      let chan = m[2];
      if (ismidichan(chan)) {
        if (usempe > 0) {
          let voice = getactivevoice(chan);
          if (voice > 0) {
            out3 = voice;
            //midiparse puts an extra byte in the output so we reconstruct explicitly
            out1 = (chan | 0xD0);
            out1 = bytein;
          }
        } else {
          out3 = 0; //all voices
          //midiparse puts an extra byte in the output so we reconstruct explicitly
          out1 = (chan | 0xD0);
          out1 = bytein;
        }
      }
    }
    break;
  case 5: //bend
    {
      let chan = m[2];
      if (ismidichan(chan)) {
        if (usempe > 0) {
          let voice = getactivevoice(chan);
          if (voice > 0) {
            out3 = voice;
            send3byte(m, 3);
          }
        } else {
          out3 = 0; //all voices
          send3byte(m, 3);
        }
      }
    }
    break;
  default:
    break;
}
