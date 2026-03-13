{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 3,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 84.0, 144.0, 1000.0, 780.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-4",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 428.0, 85.0, 150.0, 33.0 ],
                    "text": "A _very_ simple 2D surface wave simulator."
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 207.0, 185.0, 186.0, 22.0 ],
                    "text": "midiout \"Ableton Move User Port\""
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 188.0, 85.0, 214.0, 22.0 ],
                    "text": "midiin \"Ableton Move Standalone Port\""
                }
            },
            {
                "box": {
                    "attr": "run",
                    "id": "obj-13",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 98.0, 48.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 96.0, 708.0, 53.0, 22.0 ],
                    "text": "list.iter 1"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 96.0, 675.0, 61.0, 22.0 ],
                    "text": "route midi"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 96.0, 185.0, 97.0, 22.0 ],
                    "text": "prepend midiraw"
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "id": "obj-1",
                    "inletInfo": {
                        "IOInfo": [
                            {
                                "type": "midi",
                                "index": -1,
                                "tag": "",
                                "comment": ""
                            }
                        ]
                    },
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outletInfo": {
                        "IOInfo": [
                            {
                                "type": "midi",
                                "index": -1,
                                "tag": "",
                                "comment": ""
                            }
                        ]
                    },
                    "outlettype": [ "int", "list" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 3,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "rnbo",
                        "rect": [ 624.0, 100.0, 1070.0, 983.0 ],
                        "default_fontname": "Lato",
                        "title": "waves",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 843.0, 962.0, 49.0, 23.0 ],
                                    "rnbo_classname": "midiout",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "midiout_obj-34",
                                    "text": "midiout"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 843.0, 866.0, 44.0, 23.0 ],
                                    "rnbo_classname": "pack",
                                    "rnbo_extra_attributes": {
                                        "length": 0.0,
                                        "list": ""
                                    },
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "pack_obj-33",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out": {
                                                "attrOrProp": 1,
                                                "digest": "out",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "list"
                                            },
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "number to be list element 1",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "in2": {
                                                "attrOrProp": 1,
                                                "digest": "number to be list element 2",
                                                "defaultarg": 2,
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "length": {
                                                "attrOrProp": 2,
                                                "digest": "how many things to pack",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number"
                                            },
                                            "list": {
                                                "attrOrProp": 2,
                                                "digest": "the list to initialize the {@objectname} object with",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "list"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": [ "number", "bang" ],
                                                "digest": "number to be list element 1",
                                                "defaultarg": 1,
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "in2",
                                                "type": "number",
                                                "digest": "number to be list element 2",
                                                "defaultarg": 2,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "out",
                                                "type": "list",
                                                "digest": "out",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "pack",
                                        "aliasOf": "pack",
                                        "classname": "pack",
                                        "operator": 0,
                                        "versionId": 1331432417,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "pack i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 7,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 843.0, 906.0, 82.0, 23.0 ],
                                    "rnbo_classname": "midiformat",
                                    "rnbo_extra_attributes": {
                                        "bendmode": "float"
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "midiformat_obj-32",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "midimessage": {
                                                "attrOrProp": 1,
                                                "digest": "MIDI Message Output",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "number"
                                            },
                                            "noteonoroff": {
                                                "attrOrProp": 1,
                                                "digest": "Note-on or Note-off (list: pitch, velocity)",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "list"
                                            },
                                            "polypressure": {
                                                "attrOrProp": 1,
                                                "digest": "Poly Key Pressure (list: Key, Value)",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "list"
                                            },
                                            "controlchange": {
                                                "attrOrProp": 1,
                                                "digest": "Control Change (list: Controller Number, Value)",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "list"
                                            },
                                            "programchange": {
                                                "attrOrProp": 1,
                                                "digest": "Program Change",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "aftertouch": {
                                                "attrOrProp": 1,
                                                "digest": "After Touch",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "pitchbend": {
                                                "attrOrProp": 1,
                                                "digest": "Pitch Bend (0 to 127)",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number",
                                                "defaultValue": "64"
                                            },
                                            "channel": {
                                                "attrOrProp": 1,
                                                "digest": "Set MIDI Channel",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "bendmode": {
                                                "attrOrProp": 2,
                                                "digest": "Set pitch bend scaling",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "lores", "float", "hires" ],
                                                "type": "enum",
                                                "defaultValue": "float"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "noteonoroff",
                                                "type": "list",
                                                "digest": "Note-on or Note-off (list: pitch, velocity)",
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "polypressure",
                                                "type": "list",
                                                "digest": "Poly Key Pressure (list: Key, Value)",
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "controlchange",
                                                "type": "list",
                                                "digest": "Control Change (list: Controller Number, Value)",
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "programchange",
                                                "type": "number",
                                                "digest": "Program Change",
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "aftertouch",
                                                "type": "number",
                                                "digest": "After Touch",
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "pitchbend",
                                                "type": "number",
                                                "digest": "Pitch Bend (0 to 127)",
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "channel",
                                                "type": "number",
                                                "digest": "Set MIDI Channel",
                                                "defaultarg": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "midimessage",
                                                "type": "number",
                                                "digest": "MIDI Message Output",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "midiformat",
                                        "aliasOf": "midiformat",
                                        "classname": "midiformat",
                                        "operator": 0,
                                        "versionId": 370909632,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "midiformat"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 843.0, 828.0, 107.0, 23.0 ],
                                    "rnbo_classname": "makenote",
                                    "rnbo_extra_attributes": {
                                        "repeatmode": "none"
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "makenote_obj-30",
                                    "text": "makenote 127 250"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 843.0, 782.0, 32.0, 23.0 ],
                                    "rnbo_classname": "+",
                                    "rnbo_extra_attributes": {
                                        "hot": 0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "+_obj-28",
                                    "text": "+ 36"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 843.0, 748.0, 29.5, 23.0 ],
                                    "rnbo_classname": "/",
                                    "rnbo_extra_attributes": {
                                        "hot": 0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "/_obj-27",
                                    "text": "/ 5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 843.0, 711.0, 30.0, 23.0 ],
                                    "rnbo_classname": "*",
                                    "rnbo_extra_attributes": {
                                        "hot": 0
                                    },
                                    "rnbo_serial": 4,
                                    "rnbo_uniqueid": "*_obj-26",
                                    "text": "* 12"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 982.0, 701.0, 59.0, 23.0 ],
                                    "rnbo_classname": "clip",
                                    "rnbo_extra_attributes": {
                                        "hot": 0
                                    },
                                    "rnbo_serial": 4,
                                    "rnbo_uniqueid": "clip_obj-24",
                                    "text": "clip 1 127"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 843.0, 617.0, 57.0, 23.0 ],
                                    "rnbo_classname": "stripnote",
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "stripnote_obj-19",
                                    "text": "stripnote"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 847.0, 283.0, 95.0, 23.0 ],
                                    "rnbo_classname": "scale",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "scale_obj-25",
                                    "text": "scale -1. 1. 0. 1. 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 957.0, 379.0, 51.0, 23.0 ],
                                    "rnbo_classname": "clip",
                                    "rnbo_extra_attributes": {
                                        "hot": 0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "clip_obj-22",
                                    "text": "clip 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 899.0, 379.0, 51.0, 23.0 ],
                                    "rnbo_classname": "clip",
                                    "rnbo_extra_attributes": {
                                        "hot": 0
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "clip_obj-21",
                                    "text": "clip 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 846.0, 379.0, 51.0, 23.0 ],
                                    "rnbo_classname": "clip",
                                    "rnbo_extra_attributes": {
                                        "hot": 0
                                    },
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "clip_obj-20",
                                    "text": "clip 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 634.0, 33.0, 41.0, 23.0 ],
                                    "rnbo_classname": "midiin",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "midiin_obj-16",
                                    "text": "midiin"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 808.0, 464.0, 63.0, 23.0 ],
                                    "rnbo_classname": "pack",
                                    "rnbo_extra_attributes": {
                                        "length": 0.0,
                                        "list": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "pack_obj-15",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out": {
                                                "attrOrProp": 1,
                                                "digest": "out",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "list"
                                            },
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "number to be list element 1",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "in2": {
                                                "attrOrProp": 1,
                                                "digest": "number to be list element 2",
                                                "defaultarg": 2,
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "in3": {
                                                "attrOrProp": 1,
                                                "digest": "number to be list element 3",
                                                "defaultarg": 3,
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "in4": {
                                                "attrOrProp": 1,
                                                "digest": "number to be list element 4",
                                                "defaultarg": 4,
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "in5": {
                                                "attrOrProp": 1,
                                                "digest": "number to be list element 5",
                                                "defaultarg": 5,
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "length": {
                                                "attrOrProp": 2,
                                                "digest": "how many things to pack",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number"
                                            },
                                            "list": {
                                                "attrOrProp": 2,
                                                "digest": "the list to initialize the {@objectname} object with",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "list"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": [ "number", "bang" ],
                                                "digest": "number to be list element 1",
                                                "defaultarg": 1,
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "in2",
                                                "type": "number",
                                                "digest": "number to be list element 2",
                                                "defaultarg": 2,
                                                "docked": 0
                                            },
                                            {
                                                "name": "in3",
                                                "type": "number",
                                                "digest": "number to be list element 3",
                                                "defaultarg": 3,
                                                "docked": 0
                                            },
                                            {
                                                "name": "in4",
                                                "type": "number",
                                                "digest": "number to be list element 4",
                                                "defaultarg": 4,
                                                "docked": 0
                                            },
                                            {
                                                "name": "in5",
                                                "type": "number",
                                                "digest": "number to be list element 5",
                                                "defaultarg": 5,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "out",
                                                "type": "list",
                                                "digest": "out",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "pack",
                                        "aliasOf": "pack",
                                        "classname": "pack",
                                        "operator": 0,
                                        "versionId": 1331432417,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "pack i i f f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 808.0, 338.0, 29.5, 23.0 ],
                                    "rnbo_classname": "t",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "t_obj-14",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "Output order 2 (number).",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "number"
                                            },
                                            "out2": {
                                                "attrOrProp": 1,
                                                "digest": "Output order 1 (number).",
                                                "defaultarg": 2,
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "number"
                                            },
                                            "triggers": {
                                                "attrOrProp": 2,
                                                "digest": "The number of arguments determines the number of outlets. \t\t\t\t\t\tEach outlet sends out either a whole number, float, bang or list, \t\t\t\t\t\tas identified by symbol arguments (i, f, b, l). \t\t\t\t\t\tIf there are no arguments, there are two outlets, both of which send a float.",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "list"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "input",
                                                "type": [ "bang", "number", "list" ],
                                                "digest": "input to distribute",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "number",
                                                "digest": "Output order 2 (number).",
                                                "defaultarg": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "out2",
                                                "type": "number",
                                                "digest": "Output order 1 (number).",
                                                "defaultarg": 2,
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "trigger",
                                        "aliasOf": "trigger",
                                        "classname": "t",
                                        "operator": 0,
                                        "versionId": 1624904035,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "t 0 i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 957.0, 338.0, 29.5, 23.0 ],
                                    "rnbo_classname": "*",
                                    "rnbo_extra_attributes": {
                                        "hot": 0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "*_obj-13",
                                    "text": "* 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 899.0, 338.0, 29.5, 23.0 ],
                                    "rnbo_classname": "*",
                                    "rnbo_extra_attributes": {
                                        "hot": 0
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "*_obj-12",
                                    "text": "* 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 847.0, 338.0, 29.5, 23.0 ],
                                    "rnbo_classname": "*",
                                    "rnbo_extra_attributes": {
                                        "hot": 0
                                    },
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "*_obj-11",
                                    "text": "* 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 808.0, 233.0, 58.0, 23.0 ],
                                    "rnbo_classname": "unpack",
                                    "rnbo_extra_attributes": {
                                        "length": 0.0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "unpack_obj-10",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "input": {
                                                "attrOrProp": 1,
                                                "digest": "input list",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "list"
                                            },
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "list element 1",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "out2": {
                                                "attrOrProp": 1,
                                                "digest": "list element 2",
                                                "defaultarg": 2,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "length": {
                                                "attrOrProp": 2,
                                                "digest": "how many things to unpack",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number"
                                            },
                                            "list": {
                                                "attrOrProp": 2,
                                                "digest": "the list to initialize the unpack object with",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "list"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "input",
                                                "type": [ "bang", "list" ],
                                                "digest": "input list",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "number",
                                                "digest": "list element 1",
                                                "defaultarg": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "out2",
                                                "type": "number",
                                                "digest": "list element 2",
                                                "defaultarg": 2,
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "unpack",
                                        "aliasOf": "unpack",
                                        "classname": "unpack",
                                        "operator": 0,
                                        "versionId": 2023587622,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "unpack i f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 808.0, 194.0, 55.0, 23.0 ],
                                    "rnbo_classname": "list.iter",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "list.iter_obj-9",
                                    "text": "list.iter 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 808.0, 154.0, 58.0, 23.0 ],
                                    "rnbo_classname": "listfunnel",
                                    "rnbo_extra_attributes": {
                                        "offset": 0.0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "listfunnel_obj-8",
                                    "text": "listfunnel"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 81.0, 56.0, 132.0, 23.0 ],
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "minimum": 0.0,
                                        "displayname": "",
                                        "sendinit": 1,
                                        "exponent": 1.0,
                                        "meta": "",
                                        "preset": 1,
                                        "tonormalized": "",
                                        "unit": "",
                                        "order": "0",
                                        "ctlin": -1.0,
                                        "maximum": 1.0,
                                        "displayorder": "-",
                                        "fromnormalized": "",
                                        "steps": 2.0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "run",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "value": {
                                                "attrOrProp": 1,
                                                "digest": "Parameter value",
                                                "defaultarg": 2,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 1,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number",
                                                "defaultValue": "1"
                                            },
                                            "normalizedvalue": {
                                                "attrOrProp": 1,
                                                "digest": "Set value normalized. ",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "reset": {
                                                "attrOrProp": 1,
                                                "digest": "Reset param to initial value",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bang"
                                            },
                                            "normalized": {
                                                "attrOrProp": 1,
                                                "digest": "Normalized parameter value.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "number"
                                            },
                                            "maximum": {
                                                "attrOrProp": 2,
                                                "digest": "Maximum value",
                                                "isalias": 0,
                                                "aliases": [ "max" ],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 1,
                                                "type": "number",
                                                "defaultValue": "1",
                                                "label": "Maximum",
                                                "displayorder": 2,
                                                "disabledInMaxInspector": 1
                                            },
                                            "max": {
                                                "attrOrProp": 2,
                                                "digest": "Maximum value",
                                                "isalias": 1,
                                                "aliasOf": "maximum",
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "1",
                                                "label": "Maximum",
                                                "displayorder": 2
                                            },
                                            "minimum": {
                                                "attrOrProp": 2,
                                                "digest": "Minimum value",
                                                "isalias": 0,
                                                "aliases": [ "min" ],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 1,
                                                "type": "number",
                                                "defaultValue": "0",
                                                "label": "Minimum",
                                                "displayorder": 1,
                                                "disabledInMaxInspector": 1
                                            },
                                            "min": {
                                                "attrOrProp": 2,
                                                "digest": "Minimum value",
                                                "isalias": 1,
                                                "aliasOf": "minimum",
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0",
                                                "label": "Minimum",
                                                "displayorder": 1
                                            },
                                            "steps": {
                                                "attrOrProp": 2,
                                                "digest": "Divide the output into a number of discrete steps",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 1,
                                                "type": "number",
                                                "defaultValue": "2",
                                                "label": "Steps",
                                                "displayorder": 8,
                                                "disabledInMaxInspector": 1
                                            },
                                            "exponent": {
                                                "attrOrProp": 2,
                                                "digest": "Scale values exponentially",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 1,
                                                "type": "number",
                                                "defaultValue": "1",
                                                "label": "Exponent",
                                                "displayorder": 7,
                                                "disabledInMaxInspector": 1
                                            },
                                            "name": {
                                                "attrOrProp": 2,
                                                "digest": "Name of the parameter",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "label": "Parameter Name",
                                                "mandatory": 1
                                            },
                                            "enum": {
                                                "attrOrProp": 2,
                                                "digest": "Use an enumerated output",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "list",
                                                "label": "Enum Values",
                                                "displayorder": 6
                                            },
                                            "displayName": {
                                                "attrOrProp": 2,
                                                "digest": "DEPRECATED: Use the lower case 'displayname' instead",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 1,
                                                "touched": 0,
                                                "type": "symbol",
                                                "label": "Display Name"
                                            },
                                            "displayname": {
                                                "attrOrProp": 2,
                                                "digest": "A more readable name for the parameter in an external RNBO target",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Display Name",
                                                "displayorder": 14
                                            },
                                            "unit": {
                                                "attrOrProp": 2,
                                                "digest": "A symbol to describe the unit of the parameter in an external RNBO target",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Unit",
                                                "displayorder": 15
                                            },
                                            "tonormalized": {
                                                "attrOrProp": 2,
                                                "digest": "Converts a real parameter value to its normalized form",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "label": "To Normalized Expression",
                                                "displayorder": 10
                                            },
                                            "fromnormalized": {
                                                "attrOrProp": 2,
                                                "digest": "Converts a normalized parameter into its actual parameter value",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "label": "From Normalized Expression",
                                                "displayorder": 9
                                            },
                                            "order": {
                                                "attrOrProp": 2,
                                                "digest": "Order in which initial parameter values will be sent out on patcher load. The order can be numeric or symbolic ('first' and 'last')",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "0",
                                                "label": "Restore Order",
                                                "displayorder": 12
                                            },
                                            "displayorder": {
                                                "attrOrProp": 2,
                                                "digest": "Order in which parameters will show up in a list of all parameters. The order can be numeric or symbolic ('first' and 'last')",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "-",
                                                "label": "Display Order",
                                                "displayorder": 13
                                            },
                                            "sendinit": {
                                                "attrOrProp": 2,
                                                "digest": "Send initial value",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bool",
                                                "defaultValue": "true",
                                                "label": "Send Init",
                                                "displayorder": 4
                                            },
                                            "ctlin": {
                                                "attrOrProp": 2,
                                                "digest": "MIDI controller number to control this parameter.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "-1",
                                                "label": "MIDI Controller Number.",
                                                "displayorder": 16
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 17
                                            },
                                            "nopreset": {
                                                "attrOrProp": 2,
                                                "digest": "Do not add this value to the preset [DEPRECATED - USE @preset 0 instead].",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 1,
                                                "touched": 0,
                                                "type": "bool",
                                                "defaultValue": "false"
                                            },
                                            "preset": {
                                                "attrOrProp": 2,
                                                "digest": "Add this value to the preset.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bool",
                                                "defaultValue": "true",
                                                "label": "Include In Preset",
                                                "displayorder": 11
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "value",
                                                "type": "number",
                                                "digest": "Parameter value",
                                                "defaultarg": 2,
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "normalizedvalue",
                                                "type": "number",
                                                "digest": "Set value normalized. ",
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "value",
                                                "type": "number",
                                                "digest": "Parameter value",
                                                "defaultarg": 2,
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "normalized",
                                                "type": "number",
                                                "digest": "Normalized parameter value.",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "param",
                                        "aliasOf": "param",
                                        "classname": "param",
                                        "operator": 0,
                                        "versionId": -1093178486,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "param run 1 @enum 0 1",
                                    "varname": "run"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 81.0, 101.0, 57.0, 23.0 ],
                                    "rnbo_classname": "metro",
                                    "rnbo_extra_attributes": {
                                        "lock": 0.0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "metro_obj-6",
                                    "text": "metro 30"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 685.0, 101.0, 57.0, 23.0 ],
                                    "rnbo_classname": "stripnote",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "stripnote_obj-5",
                                    "text": "stripnote"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 685.0, 67.0, 47.0, 23.0 ],
                                    "rnbo_classname": "route",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "route_obj-4",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "selector1": {
                                                "attrOrProp": 1,
                                                "digest": "Change selector for Match 1",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number",
                                                "defaultValue": "0"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "input",
                                                "type": [ "list", "number", "bang" ],
                                                "digest": "Number or List to be routed",
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "selector1",
                                                "type": "number",
                                                "digest": "Change selector for Match 1",
                                                "defaultarg": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "match1",
                                                "type": [ "bang", "number", "list" ],
                                                "digest": "Output if input matches 0",
                                                "docked": 0
                                            },
                                            {
                                                "name": "nomatch",
                                                "type": [ "bang", "number", "list" ],
                                                "digest": "Input if Input Doesn't Match",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "route",
                                        "aliasOf": "route",
                                        "classname": "route",
                                        "operator": 0,
                                        "versionId": -73196972,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "route 0"
                                }
                            },
                            {
                                "box": {
                                    "code": "@state pos = [];\r\n@state vel = [];\r\n\r\nconst nrows = 4;\r\nconst ncols = 8;\r\nconst kd = 0.99;\r\nconst kc = 0.01;\r\nconst vmin = 0.001;\r\n\r\nfunction init() {\r\n    for (let i = 0; i < 32; i++) {\r\n        pos.push(0);\r\n        vel.push(0);\r\n    \r\n    }\r\n}\r\n\r\nfunction in2(i) {\r\n    pos[i] = 10;\r\n    listout2 = [i, 127];\r\n}\r\n\r\nfunction lookup2d(l: list, row, col) {\r\n    if ((row < 0) || (col < 0) || (row >= nrows) || (col >= ncols)) {\r\n        return 0;\r\n    }\r\n    return l[row * ncols + col];\r\n}\r\n\r\nfunction update() {\r\n    let next_pos: list = pos.slice(); // copy\r\n    let next_vel: list = vel.slice();\r\n    for (let r = 0; r < nrows; r++) {\r\n        for (let c = 0; c < ncols; c++) {\r\n            let address = r * ncols + c;\r\n            next_vel[address] = next_vel[address] + kc * (\r\n                lookup2d(pos, r - 1, c) +\r\n                lookup2d(pos, r + 1, c) +\r\n                lookup2d(pos, r, c - 1) +\r\n                lookup2d(pos, r, c + 1) +\r\n                0.5 * lookup2d(pos, r + 1, c + 1) +\r\n                0.5 * lookup2d(pos, r + 1, c - 1) +\r\n                0.5 * lookup2d(pos, r - 1, c + 1) +\r\n                0.5 * lookup2d(pos, r - 1, c - 1) -\r\n                6 * lookup2d(pos, r, c)\r\n            );\r\n            let old_pos = next_pos[address];\r\n            next_vel[address] = kd * next_vel[address];\r\n            next_pos[address] = next_pos[address] +  next_vel[address];\r\n            if ((old_pos <= 0) && (next_pos[address] > 0)) {\r\n                listout2 = [address, floor(scale(next_vel[address], 0, 2, 1, 127, 0.5))];\r\n            }\r\n     \r\n            if (abs(next_vel[address]) < vmin) {\r\n                next_pos[address] = 0;\r\n                next_vel[address] = 0;\r\n            }\r\n        }\r\n    }\r\n    pos = next_pos;\r\n    vel = next_vel;\r\n}\r\n\r\nlet dummy = in1;\r\nupdate();\r\nlistout1 = pos;",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "maxclass": "codebox",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 81.0, 147.0, 623.0, 720.0 ],
                                    "rnbo_classname": "codebox",
                                    "rnbo_extra_attributes": {
                                        "hot": 0,
                                        "nocache": 0,
                                        "code": "@state pos = [];\r\n@state vel = [];\r\n\r\nconst nrows = 4;\r\nconst ncols = 8;\r\nconst kd = 0.99;\r\nconst kc = 0.01;\r\nconst vmin = 0.001;\r\n\r\nfunction init() {\r\n    for (let i = 0; i < 32; i++) {\r\n        pos.push(0);\r\n        vel.push(0);\r\n    \r\n    }\r\n}\r\n\r\nfunction in2(i) {\r\n    pos[i] = 10;\r\n    listout2 = [i, 127];\r\n}\r\n\r\nfunction lookup2d(l: list, row, col) {\r\n    if ((row < 0) || (col < 0) || (row >= nrows) || (col >= ncols)) {\r\n        return 0;\r\n    }\r\n    return l[row * ncols + col];\r\n}\r\n\r\nfunction update() {\r\n    let next_pos: list = pos.slice(); // copy\r\n    let next_vel: list = vel.slice();\r\n    for (let r = 0; r < nrows; r++) {\r\n        for (let c = 0; c < ncols; c++) {\r\n            let address = r * ncols + c;\r\n            next_vel[address] = next_vel[address] + kc * (\r\n                lookup2d(pos, r - 1, c) +\r\n                lookup2d(pos, r + 1, c) +\r\n                lookup2d(pos, r, c - 1) +\r\n                lookup2d(pos, r, c + 1) +\r\n                0.5 * lookup2d(pos, r + 1, c + 1) +\r\n                0.5 * lookup2d(pos, r + 1, c - 1) +\r\n                0.5 * lookup2d(pos, r - 1, c + 1) +\r\n                0.5 * lookup2d(pos, r - 1, c - 1) -\r\n                6 * lookup2d(pos, r, c)\r\n            );\r\n            let old_pos = next_pos[address];\r\n            next_vel[address] = kd * next_vel[address];\r\n            next_pos[address] = next_pos[address] +  next_vel[address];\r\n            if ((old_pos <= 0) && (next_pos[address] > 0)) {\r\n                listout2 = [address, floor(scale(next_vel[address], 0, 2, 1, 127, 0.5))];\r\n            }\r\n     \r\n            if (abs(next_vel[address]) < vmin) {\r\n                next_pos[address] = 0;\r\n                next_vel[address] = 0;\r\n            }\r\n        }\r\n    }\r\n    pos = next_pos;\r\n    vel = next_vel;\r\n}\r\n\r\nlet dummy = in1;\r\nupdate();\r\nlistout1 = pos;",
                                        "safemath": 1
                                    },
                                    "rnbo_serial": 17,
                                    "rnbo_uniqueid": "codebox_obj-3",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "reset": {
                                                "attrOrProp": 1,
                                                "digest": "Reset all state and params to initial values",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bang"
                                            },
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "in1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "in2": {
                                                "attrOrProp": 1,
                                                "digest": "in2",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "out1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "list"
                                            },
                                            "out2": {
                                                "attrOrProp": 1,
                                                "digest": "out2",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "list"
                                            },
                                            "expr": {
                                                "attrOrProp": 2,
                                                "digest": "expr",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "hot": {
                                                "attrOrProp": 2,
                                                "digest": "Trigger computation on all inlets.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bool",
                                                "defaultValue": "false"
                                            },
                                            "safemath": {
                                                "attrOrProp": 2,
                                                "digest": "Use safe math expressions (e.g.: division by 0 will not crash).",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bool",
                                                "defaultValue": "true"
                                            },
                                            "nocache": {
                                                "attrOrProp": 2,
                                                "digest": "Do not use parsing cache. This is only useful with very very big code sizes. Code generation will then take a looooong time.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bool",
                                                "defaultValue": "false"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "number",
                                                "digest": "in1",
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "in2",
                                                "type": "number",
                                                "digest": "in2",
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "list",
                                                "digest": "out1",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out2",
                                                "type": "list",
                                                "digest": "out2",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "codebox",
                                        "aliasOf": "expr",
                                        "classname": "codebox",
                                        "operator": 0,
                                        "versionId": 835263063,
                                        "changesPatcherIO": 0
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 685.0, 33.0, 110.0, 23.0 ],
                                    "rnbo_classname": "p",
                                    "rnbo_extra_attributes": {
                                        "exposevoiceparams": 0,
                                        "uidstyle": "auto",
                                        "voicecontrol": "simple",
                                        "notecontroller": 0,
                                        "args": [],
                                        "polyphony": -1.0,
                                        "receivemode": "local"
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "p_obj-2",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "zeropressure": {
                                                "attrOrProp": 1,
                                                "digest": "zeropressure",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number"
                                            },
                                            "target": {
                                                "attrOrProp": 1,
                                                "digest": "target",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "mute": {
                                                "attrOrProp": 1,
                                                "digest": "mute",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number"
                                            },
                                            "__probingout1": {
                                                "attrOrProp": 1,
                                                "digest": "__probingout1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "signal"
                                            },
                                            "polyphony": {
                                                "attrOrProp": 2,
                                                "digest": "Polyphony of the subpatcher.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "-1"
                                            },
                                            "exposevoiceparams": {
                                                "attrOrProp": 2,
                                                "digest": "Expose per voice versions of the contained parameters (only valid in polyphonic subpatchers).",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bool",
                                                "defaultValue": "false"
                                            },
                                            "title": {
                                                "attrOrProp": 2,
                                                "digest": "Title of the subpatcher",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "file": {
                                                "attrOrProp": 2,
                                                "digest": "rnbo file to load",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "voicecontrol": {
                                                "attrOrProp": 2,
                                                "digest": "Chooses the way that polyphonic voices are controlled. 'simple' (or 'midi') will automatically allocate voices for \tincoming MIDI notes. Setting it to 'user' (or 'none') will switch off MIDI \tvoice allocation and start with all voices unmuted.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "simple", "user" ],
                                                "type": "enum",
                                                "defaultValue": "simple"
                                            },
                                            "notecontroller": {
                                                "attrOrProp": 2,
                                                "digest": "DEPRECATED. Use voicecontrol instead.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "receivemode": {
                                                "attrOrProp": 2,
                                                "digest": "Do receive~ objects get the signal from a send~ inside the patcher directly (without latency), or compensated (with latency, aligned with all other voices).",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "local", "compensated" ],
                                                "type": "enum",
                                                "defaultValue": "local"
                                            },
                                            "args": {
                                                "attrOrProp": 2,
                                                "digest": "Replacement args for the subpatcher, everything named #1, #2 etc. will be replaced with the according argument.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "uidstyle": {
                                                "attrOrProp": 2,
                                                "digest": "Behavior of #0 unique ID. auto (default) means abstractions get a local UID, local: start a new local UID, parent: use the one from the parent patcher",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "auto", "local", "parent", "global" ],
                                                "type": "enum",
                                                "defaultValue": "auto"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": [ "bang", "number", "list" ],
                                                "digest": "in1",
                                                "displayName": "midi",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": [ "bang", "number", "list" ],
                                                "digest": "out1",
                                                "displayName": "zone, address, velocity|value",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out2",
                                                "type": [ "bang", "number", "list" ],
                                                "digest": "out2",
                                                "displayName": "keypressure: index, value",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "patcher",
                                        "aliasOf": "rnbo",
                                        "classname": "p",
                                        "operator": 0,
                                        "versionId": 426236520,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "p @file input-driver"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 808.0, 506.0, 98.0, 23.0 ],
                                    "rnbo_classname": "p",
                                    "rnbo_extra_attributes": {
                                        "exposevoiceparams": 0,
                                        "uidstyle": "auto",
                                        "voicecontrol": "simple",
                                        "notecontroller": 0,
                                        "args": [],
                                        "polyphony": -1.0,
                                        "receivemode": "local"
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "p_obj-1",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "target": {
                                                "attrOrProp": 1,
                                                "digest": "target",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "mute": {
                                                "attrOrProp": 1,
                                                "digest": "mute",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number"
                                            },
                                            "__probingout1": {
                                                "attrOrProp": 1,
                                                "digest": "__probingout1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "signal"
                                            },
                                            "polyphony": {
                                                "attrOrProp": 2,
                                                "digest": "Polyphony of the subpatcher.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "-1"
                                            },
                                            "exposevoiceparams": {
                                                "attrOrProp": 2,
                                                "digest": "Expose per voice versions of the contained parameters (only valid in polyphonic subpatchers).",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bool",
                                                "defaultValue": "false"
                                            },
                                            "title": {
                                                "attrOrProp": 2,
                                                "digest": "Title of the subpatcher",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "file": {
                                                "attrOrProp": 2,
                                                "digest": "rnbo file to load",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "voicecontrol": {
                                                "attrOrProp": 2,
                                                "digest": "Chooses the way that polyphonic voices are controlled. 'simple' (or 'midi') will automatically allocate voices for \tincoming MIDI notes. Setting it to 'user' (or 'none') will switch off MIDI \tvoice allocation and start with all voices unmuted.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "simple", "user" ],
                                                "type": "enum",
                                                "defaultValue": "simple"
                                            },
                                            "notecontroller": {
                                                "attrOrProp": 2,
                                                "digest": "DEPRECATED. Use voicecontrol instead.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "receivemode": {
                                                "attrOrProp": 2,
                                                "digest": "Do receive~ objects get the signal from a send~ inside the patcher directly (without latency), or compensated (with latency, aligned with all other voices).",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "local", "compensated" ],
                                                "type": "enum",
                                                "defaultValue": "local"
                                            },
                                            "args": {
                                                "attrOrProp": 2,
                                                "digest": "Replacement args for the subpatcher, everything named #1, #2 etc. will be replaced with the according argument.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "uidstyle": {
                                                "attrOrProp": 2,
                                                "digest": "Behavior of #0 unique ID. auto (default) means abstractions get a local UID, local: start a new local UID, parent: use the one from the parent patcher",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "auto", "local", "parent", "global" ],
                                                "type": "enum",
                                                "defaultValue": "auto"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": [ "bang", "number", "list" ],
                                                "digest": "in1",
                                                "displayName": "zone, address, r, g, b",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "patcher",
                                        "aliasOf": "rnbo",
                                        "classname": "p",
                                        "operator": 0,
                                        "versionId": 426236520,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "p @file led-driver"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-10", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 1 ],
                                    "source": [ "obj-14", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-19", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 2 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 3 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 4 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 1 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 2,
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 1,
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "order": 0,
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "midpoints": [ 90.5, 903.31640625, 752.9765625, 903.31640625, 752.9765625, 144.0, 817.5, 144.0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 1 ],
                                    "source": [ "obj-30", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 96.0, 140.0, 111.0, 22.0 ],
                    "rnboattrcache": {
                        "run": {
                            "label": "run",
                            "isEnum": 1,
                            "parsestring": "\"0\" \"1\""
                        },
                        "p_obj-2/zeropressure": {
                            "label": "zeropressure",
                            "isEnum": 1,
                            "parsestring": "\"off\" \"on\""
                        }
                    },
                    "rnboversion": "1.4.3",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "rnbo~",
                            "parameter_modmode": 0,
                            "parameter_shortname": "rnbo~",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "optimization": "O1",
                        "parameter_enable": 1,
                        "uuid": "1757dc41-1d6e-11f1-9c41-a2db61054e2f"
                    },
                    "snapshot": {
                        "filetype": "C74Snapshot",
                        "version": 2,
                        "minorversion": 0,
                        "name": "snapshotlist",
                        "origin": "rnbo~",
                        "type": "list",
                        "subtype": "Undefined",
                        "embed": 1,
                        "snapshot": {
                            "__sps": {
                                "p_obj-1": {                                },
                                "p_obj-2": {
                                    "zeropressure": {
                                        "value": 1.0
                                    }
                                }
                            },
                            "run": {
                                "value": 1.0
                            },
                            "__presetid": "waves"
                        },
                        "snapshotlist": {
                            "current_snapshot": 0,
                            "entries": [
                                {
                                    "filetype": "C74Snapshot",
                                    "version": 2,
                                    "minorversion": 0,
                                    "name": "waves",
                                    "origin": "waves",
                                    "type": "rnbo",
                                    "subtype": "",
                                    "embed": 0,
                                    "snapshot": {
                                        "__sps": {
                                            "p_obj-1": {                                            },
                                            "p_obj-2": {
                                                "zeropressure": {
                                                    "value": 1.0
                                                }
                                            }
                                        },
                                        "run": {
                                            "value": 1.0
                                        },
                                        "__presetid": "waves"
                                    },
                                    "fileref": {
                                        "name": "waves",
                                        "filename": "waves.maxsnap",
                                        "filepath": "~/Documents/Max 9/Snapshots",
                                        "filepos": -1,
                                        "snapshotfileid": "5c364315d8457ec6ff0cd7bb8b364ad4"
                                    }
                                }
                            ]
                        }
                    },
                    "text": "rnbo~ @title waves",
                    "varname": "rnbo~"
                }
            },
            {
                "box": {
                    "disablefind": 0,
                    "id": "obj-46",
                    "maxclass": "jweb",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 96.0, 247.0, 706.0, 418.0 ],
                    "rendermode": 0,
                    "url": "file://move_midi_emulator.html"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "order": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 0,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "midpoints": [ 105.5, 747.12890625, 69.16015625, 747.12890625, 69.16015625, 119.47265625, 197.5, 119.47265625 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-1": [ "rnbo~", "rnbo~", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}