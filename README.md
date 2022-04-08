# Sopa de Mamaco

![Palette](palette.png)

> Uma delícia.

A GUI-only dark color scheme for [Neovim](https://neovim.io).

## Features

- Dark theme.
- Grayscale according to the golden ratio.
- Colors evenly distributed across the spectrum.
- Foreground colors have the same lightness.
- Similar colors have similar meanings.

## Colors

| #  | HTML    | HUE    | L\*   |
|----|---------|--------|-------|
|  0 | #080808 |   0    |  2.19 |
|  1 | #0c0c0c |   0    |  3.32 |
|  2 | #121212 |   0    |  5.46 |
|  3 | #1a1a1a |   0    |  9.26 |
|  4 | #252525 |   0    | 14.68 |
|  5 | #383838 |   0    | 23.52 |
|  6 | #5a5a5a |   0    | 38.24 |
|  7 | #959595 |   0    | 61.7  |
|  8 | #ff5b5b |   0    | 61.22 |
|  9 | #bc8f05 |  45.25 | 61.95 |
| 10 | #54a900 |  90.18 | 61.88 |
| 11 | #00ad2b | 134.91 | 61.71 |
| 12 | #00a7a7 | 180    | 62.02 |
| 13 | #6b90ff | 225    | 61.91 |
| 14 | #ba74ff | 270.22 | 61.78 |
| 15 | #fc4ad0 | 314.83 | 61.78 |

## Usage

The following command can be used in order to apply the color scheme.

```vim
colorscheme sopa
```

The following alternative command is a Lua equivalent.

```lua
require'sopa'.load()
```

By running these commands, this color scheme will make changes based on the
current configurations. For more information, see the
[configurations](#configurations).

## Configurations

The configurations can be accessed through the `sopa.config` module that
returns a table for getting and setting options for this color scheme.

Each field of this table stands for a setting. Each setting may have their
value set to `nil` in addition to its possible values. By setting to `nil`,
the setting will be restored to their default value.

The following subtopics addresses these settings.

### `enabled_plugins`

- Type: `table`
- Default Value: `{}`

Get or set which plugins will have their highlight groups set by this color
scheme out-of-the-box.

It must be a list, or technically a table indexed by numbers, in which each
indexed value must be a string with the name of the plugin. The following
list show the valid plugin names.

- `copilot`
- `leap`
- `nvim-tree`
- `treesitter`

## Supported Plugins

### Via `enabled_plugins` Setting

- [copilot.vim]
- [leap.nvim]
- [nvim-tree.lua]
- [nvim-treesitter]

### Via Manual Configuration

- [bufferline.nvim]

  ```lua
  require'bufferline'.setup{
    highlights = require'sopa.plugins.bufferline'.highlights
  }
  ```

[bufferline.nvim]: https://github.com/akinsho/bufferline.nvim
[copilot.vim]: https://github.com/github/copilot.vim
[leap.nvim]: https://github.com/ggandor/leap.nvim
[nvim-tree.lua]: https://github.com/kyazdani42/nvim-tree.lua
[nvim-treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
