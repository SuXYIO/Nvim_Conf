# Nvim_Conf

## Intro :information_source:

*SuXYIO*'s **Neovim** config. 

## Screenshots :fireworks:

<details>
<summary>Screenshots</summary>

> Dashboard, *catppuccin* colorscheme. 
![Screenshot0](./media/Screenshot0.png)

> Lazygit, *kanagawa* colorscheme. 
![Screenshot1](./media/Screenshot1.png)

> Code inspecting, *duskfox* colorscheme. 
![Screenshot2](./media/Screenshot2.png)

> Telescope, *everforest* colorscheme. 
![Screenshot3](./media/Screenshot3.png)

> Markdown preview, *material* colorscheme. 
![Screenshot4](./media/Screenshot4.png)

Note that these screenshots may not represent the actual effect, which is dependent on the terminal / NeoVim client config :computer:.  
Also, these screenshots might be outdated due to my laziness :sleeping:. 

</details>

## Install :calling:

### Requirements :battery:

#### Basic

Install **[NeoVim](https://github.com/neovim/neovim)** (Which I assume you have done since you're browsing this repo :sweat_smile:).  
Install **[Nerdfont](https://nerdfonts.com)** for your *terminal* or *NeoVim client* :computer:.  
**[Git](https://git-scm.com)** is recommended for cloning the repo, but you can also use tools like **wget** or **curl** :wrench:.  

### Simple :star:

:exclamation: Make sure you backup your current **NeoVim** config :floppy_disk:.  

```bash
git clone https://github.com/suxyio/Nvim_Conf ~/.config/nvim
```

### Detailed :star2:

<details>

<summary>This will be a bit verbose</summary>

1. *Optional*  
Backup your current **NeoVim** config :floppy_disk:. 
```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

1. Clone this repo :satellite:.  
```bash
git clone https://github.com/suxyio/Nvim_Conf ~/.config/nvim
```
</details>

### Check Install :mag:

You're done! :tada:  
Startup **NeoVim** to check if it works.  
If installed correctly, a grey *Lazy* window will show up to clone the plugins. 
```bash
nvim
```
If any help is needed, feel free to report it in **Issues** :wink:. 

Enjoy! :blush:

## Features :bar_chart:

### Plugin :electric_plug:

Manager: **[Lazy.nvim](https://github.com/folke/lazy.nvim)** :zzz:

<details>
<summary>Plugin list</summary>

| Plugin | Description |
| ------ | ----------- |
| [Autopairs](https://github.com/windwp/nvim-autopairs) | Better insert experience for **paired characters** |
| [Bufferline](https://github.com/akinsho/bufferline.nvim) | Provide **bufferline** |
| [Cmp](https://github.com/hrsh7th/nvim-cmp) | Provide **completion** |
| [Codeium](https://github.com/Exafunction/codeium.nvim) | Provide **AI** assist |
| [Conform](https://github.com/stevearc/conform.nvim) | Provide **linting** |
| [Gitsigns](https://github.com/lewis6991/gitsigns.nvim) | Well, **gitsigns**, literally |
| [LspSaga](https://github.com/nvimdev/lspsaga.nvim) | Better **LSP experience** |
| [Lualine](https://github.com/nvim-lualine/lualine.nvim) | Provide fancy **lines and tabs** |
| [Mason](https://github.com/williamboman/mason.nvim) | **Install LSPs** |
| [MarkdownPreview](https://github.com/iamcco/markdown-preview.nvim) | Preview **markdown** files |
| [NvimTree](https://github.com/nvim-tree/nvim-tree.lua) | Provide **tree** view |
| [Snacks](https://github.com/folke/snacks.nvim) | Provide **useful stuff** |
| [Telescope](https://github.com/nvim-telescope/telescope.nvim) | **Find** files |
| [TodoComments](https://github.com/folke/todo-comments.nvim) | Highlight **todo** comments |
| [Transparent](https://github.com/xiyaowong/transparent.nvim) | **Transparent** background |
| [Wilder](https://github.com/gelguy/wilder.nvim) | Provide **cmdline completion** |
| [ZenMode](https://github.com/folke/zen-mode.nvim) | Provide **zen mode** |

</details>

### LSP :closed_book:

Manager: **[Mason.nvim](https://github.com/williamboman/mason.nvim)**

The **autoload** feature in *Mason* is **enabled**, just install the LSPs needed, no need to config every single one :relaxed:. 

### Keymap :musical_keyboard:

<details>
<summary>Keymap list</summary>

**Note**: The single **characters** here are all **capital**, which represents the key on the keyboard, capital key presses will be represented with <kbd>Shift</kbd>. 

#### Base :star:

| Mode | Key | Map | Description |
| ---- | --- | --- | ----------- |
| / | <kbd>;</kbd> | `leader` | **Leader** key |
| N | <kbd>Cmd</kbd>-<kbd>C</kbd> | `"+y` | **Copy** to system clipboard |
| N | <kbd>Cmd</kbd>-<kbd>V</kbd> | `"+P` | **Paste** from system clipboard in normal mode |
| I | <kbd>Cmd</kbd>-<kbd>V</kbd> | `<Esc>"+P` | **Paste** from system clipboard in insert mode |
| N | <kbd>Leader</kbd>-<kbd>Q</kbd> | `<CMD>q<CR>` | **Quit** |
| N | <kbd>Leader</kbd>-<kbd>WW</kbd> | `<CMD>w<CR>` | **Save** |
| N | <kbd>Leader</kbd>-<kbd>WA</kbd> | `<CMD>wa<CR>` | **Save all** |
| N | <kbd>Leader</kbd>-<kbd>WQ</kbd> | `<CMD>wq<CR>` | **Save & Quit** |
| I | <kbd>J</kbd><kbd>K</kbd> | `<Esc>` | **Escape** from insert mode |
| N | <kbd>Space</kbd> | `:` | Go to **command** mode |
| N | <kbd>Ctrl</kbd>-<kbd>K</kbd> | `ddkP` | **Move line** up |
| N | <kbd>Ctrl</kbd>-<kbd>J</kbd> | `ddp` | **Move line** down |
| N | <kbd>Esc</kbd> | `<CMD>noh<CR>` | Remove **highlight** (clear search highlight) |
| N | <kbd>Leader</kbd>-<kbd>J</kbd> | `<CMD>bn<CR>` | Switch next **buffer** |
| N | <kbd>Leader</kbd>-<kbd>H</kbd> | `<CMD>bp<CR>` | Switch previous **buffer** |
| N | <kbd>Leader</kbd>-<kbd>W</kbd> | `<C-w>` | **Window** control |
| N | <kbd>Z</kbd><kbd>L</kbd> | `<CMD>vs<CR>` | Toggle **vertical split** |
| N | <kbd>Z</kbd><kbd>J</kbd> | `<CMD>sp<CR>` | Toggle **split** |
| N | <kbd>Leader</kbd>-<kbd>L</kbd> | `<CMD>terminal<CR>` | Open **terminal** |
| T | <kbd>Leader</kbd><kbd>Esc</kbd> | `<C-\\><C-n>` | **Escape** from terminal mode |

#### Plugin :electric_plug:

| Plugin | Mode | Key | Map | Description |
| ------ | ---- | --- | --- | ----------- |
| Conform | N | <kbd>Leader</kbd><kbd>z</kbd> | `conform.format({lsp_fallback = true})` | **Lint** manually |
| LspSaga | N | <kbd>]</kbd><kbd>E</kbd> | `<CMD>Lspsaga diagnostic*jump*next<CR>` | **Jump** to next **diagnostic** |
| LspSaga | N | <kbd>[</kbd><kbd>E</kbd> | `<CMD>Lspsaga diagnostic*jump*prev<CR>` | **Jump** to previous **diagnostic** |
| LspSaga | N | <kbd>Leader</kbd>-<kbd>A</kbd> | `<CMD>Lspsaga code*action<CR>` | Show **actions** of code |
| LspSaga | N | <kbd>Leader</kbd>-<kbd>S</kbd> | `<CMD>Lspsaga outline<CR>` | Show **outline**(structure) of code |
| LspSaga | N | <kbd>Z</kbd>-<kbd>D</kbd> | `<CMD>Lspsaga peek_definition<CR>` | Peek **definition** |
| MarkdownPreview | N | <kbd>Z</kbd>-<kbd>M</kbd> | `<CMD>MarkdownPreviewToggle<CR>` | Toggle **markdown** preview |
| NvimCmp | I | <kbd>Enter</kbd> | `cmp.mapping.confirm({select = true})` | Confirm **completion** |
| NvimCmp | I | <kbd>Esc</kbd> | `cmp.mapping.abort()` | Abort **completion** |
| NvimTree | N | <kbd>Leader</kbd>-<kbd>F</kbd> | `<CMD>NeoTree<CR>` | Toggle **tree** view |
| Snacks | N | <kbd>Leader</kbd>-<kbd>D</kbd> | `Snacks.lazygit()` | Toggle **LazyGit** |
| Snacks | N | <kbd>Leader</kbd>-<kbd>K</kbd> | `Snacks.bufdelete()` | Delete **buffer** |
| Telescope | N | <kbd>F</kbd><kbd>F</kbd> | `<CMD>Telescope<CR>` | **Telescope** |
| Transparent | N | <kbd>Shift<kbd>-<kbd>T</kbd> | `<CMD>TransparentToggle<CR>` | **Transparent** toggle |

</details>

### Colorscheme :rainbow:

| Colorscheme |
| ----------- |
| [Catppuccin](https://github.com/catppuccin-mocha) |
| [EverForest](https://github.com/sainnhe/everforest) |
| [GruvBox](https://github.com/ellisonleao/gruvbox.nvim) |
| [Kanagawa](https://github.com/rebelot/kanagawa.nvim) |
| [Material](https://github.com/slugbyte/lackluster.nvim) |
| [Material](https://github.com/marko-cerovac/material.nvim) |
| [NightFox](https://github.com/EdenEast/nightfox.nvim) |

### theme change :traffic_light:

The `colorscheme`, `background`, `lineseps` can be different on every startup over a certain rule.  
(`random`, `time`, `random` is default)

### Font :book:

[Nerdfont](https://nerdfonts.com) is needed to show properly. 

### Misc :sparkles:

#### Self-defined commands :bookmark:

<details>
<summary>Self-defined command list</summary>

| Command | Description |
| ------- | ----------- |
| `Hex` | Convert buffer **raw to hex** code. Convert back using `Hex!`. You can also add args directly, for example `Hex -p` will pass the `-p` to `xxd`. Requires `xxd` installed. |

</details>

#### Grammar check :abc:

Uses the built-in `SpellCheck`.  

#### Client support :computer:

The client **[Neovide](https://neovide.dev/)** is supported. 

## Todo

- [ ] Reduce startup time
- [ ] Add system status in lualine

## Notes

This is just a repo, so im only using a `main` branch, at least until i get this to work as a big project, which is unlikely.  
That means this repo is **really unstable**, so better *fork* it if you wanna use it yourself.  

