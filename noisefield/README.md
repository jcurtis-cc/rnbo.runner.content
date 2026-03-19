# Noise Field

Noise field is a no-input mixer feedback emulation.

Adapted from patcher Copyright Matteo Marson [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
Inspired by lAZy fiSh's [TG-8H](https://www.native-instruments.com/en/reaktor-community/reaktor-user-library/entry/show/7181/)

The graph includes a few [utilities](https://github.com/Cycling74/rnbo.move.templates):

* `Preset UI`
* `UI Control` (transport is unused)

## Interface

The primary controls for `Noise Field` are a set of 4 `macro` controls each with 4 `triggers` that randomize the values
that those macro controls tune, and `level` which attenuates the feedback.

The first 4 columns of colored pads and associated encoders are mapped to the 4 controls. The encoder alters the macro
value and the button right below triggers randomization. The lighted buttons below that temporarily offset the macro
value via aftertouch, the bottom pad offsets negative, top pad offsets positive.

The 5th column with white pads is mapped to `level`. Use the encoder to alter the level and the bottom buttons to
temporarily offset via aftertouch.

Finally, the top right white pad randomizes all the macro values and triggers all the triggers.
