# sticky_lines
sticky_lines is a neovim plugin written in lua that's intended to speed-up development by allowing users to make "sticky lines" that they can easy jump between.

## Setting a sticky line
The main command used to set sticky lines is `Sls`. Calling `Sls` with no parameters will set the label of the current sticky line to be the next nnumber in a zero-indexed sequence.
Calling `Sls [label]` creates a sticky label with a given string label name.

## Jumping to a sticky line
`Slj` is used to jump to sticky lines. Calling `Slj` with no parameters will jump to the last sticky line that was set. Calling `Slj [label]` will jump to the sticky line with a given string label name.
