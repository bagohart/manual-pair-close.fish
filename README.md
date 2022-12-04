# manual-pair-close.fish
A fish shell plugin to add matching brackets or quotes – like autopairs, but manually.

## Why?
Autopair plugins are nice *most of the time*. And then all of them eventually insert/skip/add a bracket or quote against your intention. It tends to make me furious.

## Usage
Here's an alternative.

Before: `(|`\
Press `<Tab>`.\
After: `(|)`

Supports ``` () [] {} <> "" '' `` »« „“ ```

## Installation
### Using fisher:
```
fisher install bagohart/manual-pair-close.fish
```

### Manually:
Copy the files `_manual_close_pair.fish` and `_manual_close_pair_or_complete.fish` into `$XDG_CONFIG_HOME/fish/functions/` (probably `~/.config/fish/functions`).

## Configuration
This plugin does not add any mappings, add them yourself in your `config.fish`. 

To overload `<Tab>`, add
```fish
bind \t _manual_close_pair_or_complete
```
For any other key, e.g. `<CTRL-Space>`
```fish
bind -k nul _manual_close_pair
```

## Alternatives
Autopair plugins exist:\
https://github.com/jorgebucaran/autopair.fish \
https://github.com/laughedelic/pisces \
I don't know of any manual pair plugins like this one.
