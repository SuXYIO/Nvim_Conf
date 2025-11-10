# Nvim_Conf

## Intro :information_source:

_SuXYIO_'s **Neovim** config.

## Screenshots :fireworks:

<details>
<summary>Screenshots</summary>

> <img width="1440" height="900" alt="Screenshot1" src="https://github.com/user-attachments/assets/a73ebbce-e6b0-4e66-8c9f-141895b81c79" />
> Editing code, with treeview and peeking definition of function

> <img width="1440" height="900" alt="Screenshot2" src="https://github.com/user-attachments/assets/74df05d5-22ee-46f6-94ab-4a5dc5e648fc" />
> Using telescope live grep in the snacks dashboard

> <img width="1440" height="900" alt="Screenshot3" src="https://github.com/user-attachments/assets/80991b3f-a617-4da6-a85a-7e025c775f8e" />
> Editing code checking on an error, with code structure tree open

> <img width="1440" height="900" alt="Screenshot4" src="https://github.com/user-attachments/assets/3c1b55ab-56a6-4675-8d6b-a392e3143f4b" />
> Using lazygit, faster and more intuitive git operations

> <img width="1440" height="900" alt="Screenshot5" src="https://github.com/user-attachments/assets/ca6b814c-ab2b-454a-9a42-5e70b125a620" />
> Startup profile recorded by lazy, maintains a relatively high startup speed, even with many plugins, thanks to lazyloading
> It really saved my old machine

Note that these screenshots might not represent the actual effect, which is dependent on the terminal / NeoVim client config :computer:.  
Also, these screenshots might be outdated due to my laziness :sleeping:.

</details>

## Install :calling:

### Requirements :battery:

Install **[NeoVim](https://github.com/neovim/neovim)** (Which I assume you have done since you're browsing this repo).  
Install **[NerdFont](https://nerdfonts.com)** for your terminal or NeoVim client :computer:.  
**[Git](https://git-scm.com)** is recommended for cloning the repo, but you can also use tools like **wget** or **curl** :wrench:.

### Installation :arrow_down:

1. _Optional_  
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
On the first startup, it will automatically install lazy plugin manager, which might take some time, and the windows is black, so don't be afraid. After that, lazy will clone necessary plugins, and you're off to go!

```bash
nvim
```

If any help is needed, feel free to report it in **Issues** :wink:.  
Also, use the `:Mason` command to install your `LSP`s, to get _autocompletions_, _linting_ and stuff.

Enjoy! :blush:

## Features :bar_chart:

> Note that these info might not be up to date, since I always forget to update these.

### Plugin :electric_plug:

Manager: **[Lazy.nvim](https://github.com/folke/lazy.nvim)** :zzz: :package:

<details>
<summary>Plugin list</summary>

| Plugin                                                                         | Description                           |
| ------------------------------------------------------------------------------ | ------------------------------------- |
| [Autopairs](https://github.com/windwp/nvim-autopairs)                          | Insert **paired characters**          |
| [Blink](https://github.com/saghen/blink.cmp)                                   | **Completions**                       |
| [Bufferline](https://github.com/akinsho/bufferline.nvim)                       | Provide **bufferline**                |
| [Codeium](https://github.com/Exafunction/codeium.nvim)                         | Provide **AI** assist                 |
| [Conform](https://github.com/stevearc/conform.nvim)                            | Provide **linting**                   |
| [LspSaga](https://github.com/nvimdev/lspsaga.nvim)                             | Better **LSP experience**             |
| [Lualine](https://github.com/nvim-lualine/lualine.nvim)                        | Provide fancy **lines and tabs**      |
| [Mason](https://github.com/williamboman/mason.nvim)                            | **Install LSPs**                      |
| [NvimTree](https://github.com/nvim-tree/nvim-tree.lua)                         | Provide **tree** view                 |
| [RenderMarkdown](https://github.com/MeanderingProgrammer/render-markdown.nvim) | Gives inline **markdown** view        |
| [Snacks](https://github.com/folke/snacks.nvim)                                 | Provide **useful stuff**              |
| [Telescope](https://github.com/nvim-telescope/telescope.nvim)                  | **Find** files                        |
| [Transparent](https://github.com/xiyaowong/transparent.nvim)                   | **Transparent** background            |
| [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)               | Well, just see it as a LSP dependency |
| [UFO](https://github.com/kevinhwang91/nvim-ufo)                                | Code **folding**                      |
| [ZenMode](https://github.com/folke/zen-mode.nvim)                              | Provide **zen mode**                  |

</details>

### LSP :closed_book:

Manager: **[Mason.nvim](https://github.com/williamboman/mason.nvim)**

The **autoload** feature in _Mason_ is **enabled**, just install the LSPs needed, no need to config every single one :relaxed:.  
Well, except for _Conform_ formatters, they have to be manually written in the config, to match languages with the right one.

### Keymap :musical_keyboard:

<details>
<summary>Keymap list</summary>

**Note**: The single **characters** here are all **capital**, which represents the key on the keyboard, capital key presses will be represented with <kbd>Shift</kbd>.

#### Base :star:

| Mode | Key                             | Map                 | Description                                    |
| ---- | ------------------------------- | ------------------- | ---------------------------------------------- |
| /    | <kbd>;</kbd>                    | `leader`            | **Leader** key                                 |
| v    | <kbd>Cmd</kbd>-<kbd>I</kbd>     | `"+y`               | **Copy** to system clipboard                   |
| n    | <kbd>Cmd</kbd>-<kbd>O</kbd>     | `"+P`               | **Paste** from system clipboard in normal mode |
| n    | <kbd>Leader</kbd>-<kbd>Q</kbd>  | `<CMD>q<CR>`        | **Quit**                                       |
| n    | <kbd>Leader</kbd>-<kbd>WW</kbd> | `<CMD>w<CR>`        | **Save**                                       |
| n    | <kbd>Leader</kbd>-<kbd>WA</kbd> | `<CMD>wa<CR>`       | **Save all**                                   |
| n    | <kbd>Leader</kbd>-<kbd>WQ</kbd> | `<CMD>wq<CR>`       | **Save & Quit**                                |
| i    | <kbd>J</kbd><kbd>K</kbd>        | `<Esc>`             | **Escape** from insert mode                    |
| n    | <kbd>Space</kbd>                | `:`                 | Enter **command** mode                         |
| n    | <kbd>Ctrl</kbd>-<kbd>K</kbd>    | `ddkP`              | **Move line** up                               |
| n    | <kbd>Ctrl</kbd>-<kbd>J</kbd>    | `ddp`               | **Move line** down                             |
| n    | <kbd>Esc</kbd>                  | `<CMD>noh<CR>`      | Remove **highlight** (clear search highlight)  |
| n    | <kbd>Leader</kbd>-<kbd>J</kbd>  | `<CMD>bn<CR>`       | Switch next **buffer**                         |
| n    | <kbd>Leader</kbd>-<kbd>H</kbd>  | `<CMD>bp<CR>`       | Switch previous **buffer**                     |
| n    | <kbd>Leader</kbd>-<kbd>K</kbd>  | `<CMD>bd<CR>`       | Delete **buffer**                              |
| n    | <kbd>Leader</kbd>-<kbd>W</kbd>  | `<C-w>`             | **Window** control                             |
| n    | <kbd>Z</kbd><kbd>L</kbd>        | `<CMD>vs<CR>`       | Toggle **vertical split**                      |
| n    | <kbd>Z</kbd><kbd>J</kbd>        | `<CMD>sp<CR>`       | Toggle **split**                               |
| n    | <kbd>Leader</kbd>-<kbd>L</kbd>  | `<CMD>terminal<CR>` | Open **terminal**                              |
| t    | <kbd>Leader</kbd><kbd>Esc</kbd> | `<C-\\><C-n>`       | **Escape** from terminal mode                  |

#### Plugin :electric_plug:

| Plugin      | Mode | Key                                        | Map                                           | Description                         |
| ----------- | ---- | ------------------------------------------ | --------------------------------------------- | ----------------------------------- |
| LspSaga     | n    | <kbd>]</kbd><kbd>E</kbd>                   | `<CMD>Lspsaga diagnostic*jump*next<CR>`       | **Jump** to next **diagnostic**     |
| LspSaga     | n    | <kbd>[</kbd><kbd>E</kbd>                   | `<CMD>Lspsaga diagnostic*jump*prev<CR>`       | **Jump** to previous **diagnostic** |
| LspSaga     | n    | <kbd>Leader</kbd>-<kbd>S</kbd>             | `<CMD>Lspsaga outline<CR>`                    | Show **outline**(structure) of code |
| LspSaga     | n    | <kbd>Leader</kbd>-<kbd>A</kbd>             | `<CMD>Lspsaga peek_definition<CR>`            | Show **actions** of code            |
| NvimTree    | n    | <kbd>Leader</kbd>-<kbd>F</kbd>             | `<CMD>NvimTreeToggle<CR>`                     | Toggle **tree** view                |
| Snacks      | n    | <kbd>Leader</kbd>-<kbd>D</kbd>             | `Snacks.lazygit()`                            | Toggle **LazyGit**                  |
| Telescope   | n    | <kbd>F</kbd><kbd>F</kbd>                   | `<CMD>Telescope<CR>`                          | **Telescope**                       |
| Transparent | n    | <kbd>T</kbd>                               | `<CMD>TransparentToggle<CR>`                  | **Transparent** toggle              |
| UFO         | n    | <kbd>Z</kbd>-<kbd>Shift</kbd>-<kbd>O</kbd> | plugin builtin                                | open **folds**                      |
| UFO         | n    | <kbd>Z</kbd>-<kbd>Shift</kbd>-<kbd>C</kbd> | plugin builtin                                | close **fold**                      |
| UFO         | n    | <kbd>Z</kbd>-<kbd>O</kbd>                  | `require("ufo").openAllFolds()`               | open all **fold**                   |
| UFO         | n    | <kbd>Z</kbd>-<kbd>C</kbd>                  | `require("ufo").closeAllFolds()`              | close all **folds**                 |
| UFO         | n    | <kbd>Z</kbd>-<kbd>P</kbd>                  | `require("ufo").peekFoldedLinesUnderCursor()` | peek **fold**                       |

</details>

### Colorscheme :rainbow:

| Colorscheme                                               |
| --------------------------------------------------------- |
| [Ayu](https://github.com/Shatur/neovim-ayu)               |
| [Catppuccin](https://github.com/catppuccin-mocha)         |
| [EverForest](https://github.com/sainnhe/everforest)       |
| [GruvBox](https://github.com/ellisonleao/gruvbox.nvim)    |
| [Kanagawa](https://github.com/rebelot/kanagawa.nvim)      |
| [Lackluster](https://github.com/slugbyte/lackluster.nvim) |
| [NightFox](https://github.com/EdenEast/nightfox.nvim)     |

### theme change :traffic_light:

The `colorscheme`, `background`, `lineseps` can be different on every startup over a certain rule.  
(`random`, `time`, `random` is default)

### Font :book:

[NerdFont](https://nerdfonts.com) is needed to show stuff properly.

### Misc :sparkles:

#### Self-defined commands :bookmark:

<details>
<summary>Self-defined command list</summary>

| Command | Description                                                                                                                                                                |
| ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `Hex`   | Convert buffer **raw to hex** code. Convert back using `Hex!`. You can also add args directly, for example `Hex -p` will pass the `-p` to `xxd`. Requires `xxd` installed. |

</details>

#### Client support :computer:

Config for **[Neovide](https://neovide.dev/)** is written.

## Todo

- [ ] Reduce startup time

## Notes

This is just a repo, so im only using a `main` branch, at least until i get this to work as a big project, which is unlikely.  
That means this repo is **really unstable**, so better _fork_ it if you wanna use it yourself.
