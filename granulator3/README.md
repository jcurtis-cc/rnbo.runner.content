# Granulator III

[Granulator III](https://www.ableton.com/en/packs/granulator-iii/) used RNBO internally but we've done some further
refinement to improve the RNBO experience and fix a bug or two.

The Granulator III graph includes a few [utilities](https://github.com/Cycling74/rnbo.move.templates):

* `Preset UI`
* `UI Control` (transport is unused)
* `Scale`, `Pad Scale`, `Pad KBM Builder` - a set of simple tuning system aware devices that map the pads to notes and
  use the `+` and `-` nav buttons to change octaves.

## Waveform and Param View

There is a custom UI that draws the waveform and play-head cursors to the display. The view has a `Param
View` overlay with a basic set of parameters, fully user customizable via the Web Interface:

1. Grain Position
2. Position Scan Distance
3. Position Scan Rate
4. Grain Size
5. Env1 Attack Time
6. Env1 Release Time
7. Filter Frequency
8. Buffer Selection (sound file or captured content)

You can use the "session" button (3 horizontal lines) to toggle between the waveform display and a more detailed
`Param View`.

## Playing Notes

You can play notes via the pads and depending on your various `Press to <x>` parameter settings, the polyphonic
aftertouch may further alter the sound.

## Capturing Content

The granulator is always capturing live audio input. If you press the "sampling" button (with the red light), the last
`n` seconds (configurable with the `Capture Length` param) will become the source of your granulation and will be
visualized on the display. Your captured content will be saved with your next preset(s).

## Changing Buffer Content

You can change the audio loaded via the `Device Data` menu item, then the `SoundFile` entry. Your sound file mapping will
be saved with your next preset. You can also do this via the Web Interface. You can upload new files there too.

## Further Customization

There are a lot of parameters for the granulator. You can access them all via the `Device Params` menu item, though you
may prefer to use the Web Interface as you can sort and filter there.



