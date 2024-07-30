# Nvim_Conf

## Intro

_SuXYIO_'s __Neovim__ config. 

## Screenshots

<details>
<summary>Screenshots</summary>

> Editing markdown with _tree view_, _code outline_, _telescope_ on, _tokyonight_ colorscheme. 
![Screenshot0](./media/Screenshot0.png)

> Editing a C source file and checking for _code actions_, with _code outline_ on, _material_ colorscheme. 
![Screenshot1](./media/Screenshot1.png)

</details>

## Info

### Plugin

Manager: __[Lazy.nvim](https://github.com/folke/lazy.nvim)__

<details>
<summary>Plugin list</summary>

| Plugin | Description | Lazy |
| ------ | ----------- | ---- |
| [Autopairs](https://github.com/windwp/nvim-autopairs) | Better insert experience for __paired characters__ | Event`InsertEnter` |
| [Codeium](https://github.com/Exafunction/codeium.nvim) | Provide __AI__ assist | Cmd `Codeium` |
| [Dashboard](https://github.com/nvimdev/dashboard-nvim) | Startup __dashboard__ | Event `VimEnter` |
| [GitSign](https://github.com/lewis6991/gitsigns.nvim) | Show __changes for git__ | Event `VimEnter` |
| [LeetCode](https://github.com/kawre/leetcode.nvim) | __Leetcode__ inside nvim | Cmd `Leet` |
| [LspConfig](https://github.com/neovim/nvim-lspconfig) | Provide __LSP configuration__ | Event `VimEnter` |
| [LspSaga](https://github.com/nvimdev/lspsaga.nvim) | Better __LSP experience__ | Event `VimEnter` |
| [Lualine](https://github.com/nvim-lualine/lualine.nvim) | Provide fancy __lines and tabs__ | Event `VimEnter` |
| [Mason](https://github.com/williamboman/mason.nvim) | __Install LSPs__ | Event `VimEnter` |
| [MarkdownPreview](https://github.com/iamcco/markdown-preview.nvim) | Preview __markdown__ files | Cmd `MarkdownPreviewToggle, MarkdownPreview, MarkdownPreviewStop`; Ft `markdown` |
| [NvimCmp](https://github.com/hrsh7th/nvim-cmp) | Provide __completion__ | Event `InsertEnter` |
| [NvimTree](https://github.com/nvim-tree/nvim-tree.lua) | Provide __tree__ view | Keys <kbd>Ctrl</kbd>-<kbd>N</kbd> |
| [Telescope](https://github.com/nvim-telescope/telescope.nvim) | __Find__ files | Cmd `Telescope` |
| [TodoComments](https://github.com/folke/todo-comments.nvim) | Highlight __todo__ comments | Event `VimEnter` |
| [Transparent](https://github.com/xiyaowong/transparent.nvim) | Provide __transparent__ background | Event `VimEnter` |

</details>

### LSP

Manager: __[Mason.nvim](https://github.com/williamboman/mason.nvim)__

The __autoload__ feature in _Mason_ is __enabled__, just install the LSPs needed, no need to config every single one. 

### Keymap

<details>
<summary>Keymap list</summary>

#### Base

| Mode | Key | Map | Description |
| ---- | --- | --- | ----------- |
| / | <kbd>;</kbd> | `leader` | __Leader__ key |
| N | <kbd>Cmd</kbd>-<kbd>C</kbd> | `"+y` | __Copy__ to system clipboard |
| N | <kbd>Cmd</kbd>-<kbd>V</kbd> | `"+P` | __Paste__ from system clipboard in normal mode |
| I | <kbd>Cmd</kbd>-<kbd>V</kbd> | `<Esc>"+P` | __Paste__ from system clipboard in insert mode |
| N | <kbd>Cmd</kbd>-<kbd>S</kbd> | `<CMD>w<CR>` | __Save__ file |
| I | <kbd>j</kbd><kbd>L</kbd> | `<Esc>` | __Escape__ from insert mode |
| N | <kbd>Space</kbd> | `:` | Go to __command__ mode |
| N | <kbd>Ctrl</kbd>-<kbd>K</kbd> | `ddkP` | __Move line__ up |
| N | <kbd>Ctrl</kbd>-<kbd>J</kbd> | `ddp` | __Move line__ down |
| N | <kbd>Esc</kbd> | `<CMD>noh<CR>` | Remove __highlight__ (clear search highlight) |
| N | <kbd>Ctrl</kbd>-<kbd>O</kbd> | `<CMD>bn<CR>` | Switch __buffer__ |
| N | <kbd>Ctrl</kbd>-<kbd>I</kbd> | `<CMD>bd<CR>` | Close __buffer__ |
| N | <kbd>Ctrl</kbd>-<kbd>H</kbd> | `<CMD>vs<CR>` | Vertical window __split__ |
| N | <kbd>Ctrl</kbd>-<kbd>M</kbd> | `<CMD>terminal<CR>` | Open __terminal__ |
| T | <kbd>J</kbd><kbd>K</kbd> | `<C-\\><C-n>` | __Escape__ from terminal mode |

#### Plugin

| Plugin | Mode | Key | Map | Description |
| ------ | ---- | --- | --- | ----------- |
| NvimCmp | I | <kbd>Enter</kbd> | `cmp.mapping.confirm({select = true})` | Confirm __completion__ |
| NvimCmp | I | <kbd>Tab</kbd> | `cmp.mapping.abort()` | Abort __completion__ |
| LspSaga | N | <kbd>[</kbd><kbd>E</kbd> | `<CMD>Lspsaga diagnostic_jump_next<CR>` | __Jump__ to next __diagnostic__ |
| LspSaga | N | <kbd>[</kbd><kbd>Shift</kbd>-<kbd>E</kbd> | `<CMD>Lspsaga diagnostic_jump_next<CR>` | __Jump__ to previous __diagnostic__ |
| LspSaga | N | <kbd>Ctrl</kbd>-<kbd>S</kbd> | `<CMD>Lspsaga outline<CR>` | Show __outline__(structure) of code |
| LspSaga | N | <kbd>Ctrl</kbd>-<kbd>A</kbd> | `<CMD>Lspsaga code_action<CR>` | Show __actions__ of code |
| MarkdownPreview | N | <kbd>Ctrl</kbd>-<kbd>B</kbd> | `<CMD>MarkdownPreviewToggle<CR>` | Toggle __markdown__ preview |
| Telescope | N | <kbd>f</kbd><kbd>f</kbd> | `<CMD>Telescope find_files<CR>` | __Telescope__ find files |
| Transparent | N | <kbd>T</kbd> | `<CMD>TransparentToggle<CR>` | __Transparent__ toggle |
| NvimTree | N | <kbd>Ctrl</kbd>-<kbd>N</kbd> | `<CMD>NvimTreeToggle<CR>` | Toggle __tree__ view |

</details>

### Colorscheme

- [Material](https://github.com/marko-cerovac/material.nvim)
- [Tokyonight](https://github.com/folke/tokyonight.nvim)
- [Ayu](https://github.com/Luxed/ayu-vim)
- [Gruvbox](https://github.com/morhetz/gruvbox)

#### Colorcycle

The program does a __Colorcycle__ every time on startup.  
You can choose between __`Choose by time`__ or __`Choose in list (random)`__ by modifying `lua/colorcycle.lua`.  
The __time seperation__ is defined in `lua/timeseps.lua`.  
A few colorchemes also __change__ it's own __style__ by __time__, see lua files in `lua/colorschemes/`

### Font

__Nerdfont__ is needed to show properly. 
I personally like [JetbrainsMono](https://www.jetbrains.com/lp/mono/). 

### Misc

#### Self-defined commands

<details>
<summary>Self-defined command list</summary>

| Command | Operation | Description |
| ------- | --------- | ----------- |
| `Hex` | `%!xxd` | Convert buffer raw to __hex__ code |
| `Dehex` | `%!xxd -r` | Convert buffer hex code to __raw__ |

</details>

#### Client support

The client __[Neovide](https://neovide.dev/)__ is supported, see `lua/client.lua`. 

