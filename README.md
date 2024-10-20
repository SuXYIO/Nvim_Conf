# Nvim_Conf

## Intro

_SuXYIO_'s __Neovim__ config. 

## Screenshots

<details>
<summary>Screenshots</summary>

> Editing `Markdown` with _tree view_, _telescope_ on, _lackluster-hack_ colorscheme. 
![Screenshot0](./media/Screenshot0.png)

> Editing `C` source file checking for function _definition_, _duskfox_ colorscheme. 
![Screenshot1](./media/Screenshot1.png)

> Editing `Lua` with _lazygit_ window on, _kanagawa-dragon_ colorscheme. 
![Screenshot2](./media/Screenshot2.png)

> Editing `C` with _code diagnostic_ on, _ayu-dark_ colorscheme. 
![Screenshot3](./media/Screenshot3.png)

</details>

## Info

### Plugin

Manager: __[Lazy.nvim](https://github.com/folke/lazy.nvim)__

<details>
<summary>Plugin list</summary>

| Plugin | Description |
| ------ | ----------- |
| [Autopairs](https://github.com/windwp/nvim-autopairs) | Better insert experience for __paired characters__ |
| [Bufferline](https://github.com/akinsho/bufferline.nvim) | Provide __bufferline__ |
| [Cmp](https://github.com/hrsh7th/nvim-cmp) | Provide __completion__ |
| [Codeium](https://github.com/Exafunction/codeium.nvim) | Provide __AI__ assist |
| [Dashboard](https://github.com/nvimdev/dashboard-nvim) | Startup __dashboard__ |
| [LazyGit](https://github.com/kdheepak/lazygit.nvim) | Provide __LazyGit__ integration |
| [LspSaga](https://github.com/nvimdev/lspsaga.nvim) | Better __LSP experience__ |
| [Lualine](https://github.com/nvim-lualine/lualine.nvim) | Provide fancy __lines and tabs__ |
| [Mason](https://github.com/williamboman/mason.nvim) | __Install LSPs__ |
| [MarkdownPreview](https://github.com/iamcco/markdown-preview.nvim) | Preview __markdown__ files |
| [Notify](https://github.com/rcarriga/nvim-notify) | Notice __UI__ |
| [2048](https://github.com/NStefan002/2048.nvim) | Play __2048__ |
| [NvimCmp](https://github.com/hrsh7th/nvim-cmp) | Provide __completion__ |
| [NvimTree](https://github.com/nvim-tree/nvim-tree.lua) | Provide __tree__ view |
| [Telescope](https://github.com/nvim-telescope/telescope.nvim) | __Find__ files |
| [TodoComments](https://github.com/folke/todo-comments.nvim) | Highlight __todo__ comments |
| [Transparent](https://github.com/xiyaowong/transparent.nvim) | __Transparent__ background |
| [Wilder](https://github.com/gelguy/wilder.nvim) | Provide __cmdline completion__ |

</details>

### LSP

Manager: __[Mason.nvim](https://github.com/williamboman/mason.nvim)__

The __autoload__ feature in _Mason_ is __enabled__, just install the LSPs needed, no need to config every single one. 

### Keymap

<details>
<summary>Keymap list</summary>

__Note__: The single __characters__ here are all __capital__, which represents the key on the keyboard, capital key presses will be represented with <kbd>Shift</kbd>. 

#### Base

| Mode | Key | Map | Description |
| ---- | --- | --- | ----------- |
| / | <kbd>;</kbd> | `leader` | __Leader__ key |
| N | <kbd>Cmd</kbd>-<kbd>C</kbd> | `"+y` | __Copy__ to system clipboard |
| N | <kbd>Cmd</kbd>-<kbd>V</kbd> | `"+P` | __Paste__ from system clipboard in normal mode |
| I | <kbd>Cmd</kbd>-<kbd>V</kbd> | `<Esc>"+P` | __Paste__ from system clipboard in insert mode |
| N | <kbd>Leader</kbd>-<kbd>Q</kbd> | `<CMD>q<CR>` | __Quit__ |
| N | <kbd>Leader</kbd>-<kbd>WW</kbd> | `<CMD>w<CR>` | __Save__ |
| N | <kbd>Leader</kbd>-<kbd>WQ</kbd> | `<CMD>wq<CR>` | __Save & Quit__ |
| I | <kbd>J</kbd><kbd>K</kbd> | `<Esc>` | __Escape__ from insert mode |
| N | <kbd>Space</kbd> | `:` | Go to __command__ mode |
| N | <kbd>Ctrl</kbd>-<kbd>K</kbd> | `ddkP` | __Move line__ up |
| N | <kbd>Ctrl</kbd>-<kbd>J</kbd> | `ddp` | __Move line__ down |
| N | <kbd>Esc</kbd> | `<CMD>noh<CR>` | Remove __highlight__ (clear search highlight) |
| N | <kbd>Leader</kbd>-<kbd>J</kbd> | `<CMD>bn<CR>` | Switch next __buffer__ |
| N | <kbd>Leader</kbd>-<kbd>Shift</kbd>-<kbd>J</kbd> | `<CMD>bp<CR>` | Switch previous __buffer__ |
| N | <kbd>Leader</kbd>-<kbd>K</kbd> | `<CMD>bd<CR>` | Delete __buffer__ |
| N | <kbd>Leader</kbd>-<kbd>Shift</kbd>-<kbd>K</kbd> | `<CMD>bd!<CR>` | Force delete __buffer__ |
| N | <kbd>Ctrl</kbd>-<kbd>L</kbd> | `<CMD>terminal<CR>` | Open __terminal__ |
| N | <kbd>Leader</kbd><kbd>W</kbd> | `<C-w>` | __Window__ control |
| N | <kbd>Leader</kbd><kbd>Z</kbd> | `<CMD>set spell!<CR>` | Toggle __spellcheck__ |
| T | <kbd>J</kbd><kbd>K</kbd> | `<C-\\><C-n>` | __Escape__ from terminal mode |

#### Plugin

| Plugin | Mode | Key | Map | Description |
| ------ | ---- | --- | --- | ----------- |
| Codeium | N | <kbd>Leader</kbd>-<kbd>N</kbd> | `<CMD>Codeium Enable<CR>` | Enable __Codeium__ |
| LazyGit | N | <kbd>Leader</kbd>-<kbd>D</kbd> | `<CMD>LazyGit<CR>` | Toggle __LazyGit__ |
| LspSaga | N | <kbd>[</kbd><kbd>E</kbd> | `<CMD>Lspsaga diagnostic_jump_next<CR>` | __Jump__ to next __diagnostic__ |
| LspSaga | N | <kbd>[</kbd><kbd>Shift</kbd>-<kbd>E</kbd> | `<CMD>Lspsaga diagnostic_jump_next<CR>` | __Jump__ to previous __diagnostic__ |
| LspSaga | N | <kbd>Leader</kbd>-<kbd>A</kbd> | `<CMD>Lspsaga code_action<CR>` | Show __actions__ of code |
| LspSaga | N | <kbd>Leader</kbd>-<kbd>S</kbd> | `<CMD>Lspsaga outline<CR>` | Show __outline__(structure) of code |
| LspSaga | N | <kbd>Leader</kbd>-<kbd>V</kbd> | `<CMD>Lspsaga peek_definition<CR>` | Peek __definition__ |
| LspSaga | N | <kbd>Leader</kbd>-<kbd>C</kbd> | `<CMD>Lspsaga show_line_diagnostics<CR>` | Show __line diagnostics__ |
| MarkdownPreview | N | <kbd>Leader</kbd>-<kbd>X</kbd> | `<CMD>MarkdownPreviewToggle<CR>` | Toggle __markdown__ preview |
| NvimCmp | I | <kbd>Enter</kbd> | `cmp.mapping.confirm({select = true})` | Confirm __completion__ |
| NvimCmp | I | <kbd>Esc</kbd> | `cmp.mapping.abort()` | Abort __completion__ |
| NvimCmp | I | <kbd>Leader</kbd>-<kbd>Space</kbd> | `cmp.mapping.complete()` | Start __completion__ |
| NvimTree | N | <kbd>Leader</kbd>-<kbd>F</kbd> | `<CMD>NvimTreeToggle<CR>` | Toggle __tree__ view |
| Telescope | N | <kbd>f</kbd><kbd>f</kbd> | `<CMD>Telescope find_files<CR>` | __Telescope__ find files |
| TodoComments | N | <kbd>[</kbd><kbd>T</kbd> | `require("todo-comments").jump_next()` | __Jump__ to next __todo__ |
| Transparent | N | <kbd>T</kbd> | `<CMD>TransparentToggle<CR>` | __Transparent__ toggle |

</details>

### Colorscheme

- [Ayu](https://github.com/Shatur/neovim-ayu)
- [Catppuccin](https://github.com/catppuccin-mocha)
- [Kanagawa](https://github.com/rebelot/kanagawa.nvim)
- [Lackluster](https://github.com/slugbyte/lackluster.nvim)
- [Nightfox](https://github.com/EdenEast/nightfox.nvim)

#### theme change

The `colorscheme`, `background`, `lineseps` can be different on every startup over a certain rule.  
(`random`, `time`, `random` is default)
See `lua/theme.lua`.  

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

#### Grammar check

Uses the built-in `SpellCheck`, enables when filetype is `text` or `markdown`.  

#### Client support

The client __[Neovide](https://neovide.dev/)__ is supported, see `lua/client.lua`. 

