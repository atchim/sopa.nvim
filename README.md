# 🥣 Sopa de Mamaco

> Uma delícia.

A [GUI]-only dark color scheme for [Neovim].

## ✨ Features

- Dark theme.
- Grayscale according to the golden ratio.
- Colors evenly distributed across the spectrum.
- Foreground colors have the same lightness.
- Similar colors have similar meanings.

## 🎨 Colors

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

## 🚀 Usage

To simply apply the color scheme, run `:colorscheme sopa`. To configure the
color scheme without applying it, use the [`config`](#config). To configure and
apply the color scheme, use the [`setup`](#setupconfig) function.

## 🔧 Configuration

### 🧐 Brief Overview

The plugin configuration is made via what is called by the plugin author a
"metasetting", which is a table containing settings that have default values
that can be overwritten by the user preferences, and then restored to their
defaults by assigning them to `nil`. This approach was heavily inspired by
[this article][lua-mt-nvim-plugin] about plugin configuration via Lua
metatables.

There are two ways to configure settings, which are via the
[`setup`](#setupconfig) function, and via the [`config`](#config)
table directly. To configure a nested setting within the table, the user can do
the following.

```lua
require'sopa.config'.config.integrations.cmp = false
```

To configure multiple settings within a table, the user can do the following
alternative form, which is more suitable.

```lua
require'sopa.config'.config.integrations = {
  cmp = false,
  ['indent-blankline'] = nil, -- Restores to default value.
  ['neo-tree'] = false,
}
```

### 📋 Configuration Table

The following snippet shows the default configuration and explains their
settings.

```lua
{
  -- Custom groups to be highlighted. This is a table where the keys stands for
  -- the name of the highlight group, and the value is a table conforming with
  -- the `{*val}` parameter of `nvim_set_hl()`.
  custom_groups = {}

  -- Integrations for highlighting groups for other plugins. Each field stands
  -- for the plugin, while its boolean value defines whether to apply highlight
  -- groups for that plugin.
  integrations = {
    cmp = true, -- Integration for `nvim-cmp`.
    ['indent-blankline'] = true, -- Integration for `indent-blankline.nvim`.
    leap = true, -- Integration for `leap.nvim`.
    ['neo-tree'] = true, -- Integration for `neo-tree.nvim`.
    treesitter = true, -- Integration for `nvim-treesitter`.
  }

  -- Whether to enable colors for Noevim's builtin terminal emulator.
  terminal_colors = true,
}
```

## 🧩 Integrations

- [indent-blankline.nvim]
- [leap.nvim]
- [neo-tree.nvim]
- [nvim-cmp]
- [nvim-treesitter]

## 📖 API

Existent modules that are not shown here are meant for internal usage only.
However, it is possible to the user to access highlight group definitions
established by this colors scheme in the `groups` table exported by the modules
`sopa.builtin` and the submodules of `sopa.integrations`.

### `sopa`

Table representing the main module of this plugin.

#### `setup(?config)`

Function for setting up configurations, and applying highlight definitions for
groups as `:colorscheme sopa` would do.

When `?config` is `nil` the color scheme is loaded with the current
configuration. Otherwise if it is a table, the configuration is applied
overwritting defaults.

To avoid misusing this function, see [usage](#-usage).

### `sopa.config`

Table representing the module for configurations.

#### `config`

Table for configuring the color scheme. See the
[configuration](#-configuration) topic for a rich explanatory coverage.

#### `reset(?config)`

Resets the current configuration with `?config`, which may be `nil`, or a
[configuration table](#-configuration-table) table. If `?config` is a table it
will overwrite the default configuration.

### `sopa.palette`

Functable for getting colors in the `#RRGGBB` notation, used by this color
scheme.

When called, it takes a number argument that stands for the index of the color,
as shown in [colors](#-colors). The function returns a string in the `#RRGGBB`
notation for the color at the specified index.

It is also possible to get a color string by simply accessing the color index
in the table. The following code snippet exemplifies both approaches.

```lua
local palette = require'sopa.palette'
local red = palette[8]
local orange = palette(9)
```

[GUI]: https://neovim.io/doc/user/gui.html#gui
[indent-blankline.nvim]: https://github.com/lukas-reineke/indent-blankline.nvim
[leap.nvim]: https://github.com/ggandor/leap.nvim
[lua-mt-nvim-plugin]: https://hiphish.github.io/blog/2022/03/15/lua-metatables-for-neovim-plugin-settings
[neo-tree.nvim]: https://github.com/nvim-neo-tree/neo-tree.nvim
[Neovim]: https://neovim.io
[nvim-cmp]: https://github.com/hrsh7th/nvim-cmp
[nvim-treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
