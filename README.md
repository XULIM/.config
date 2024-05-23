# config
The idea of this config is to have the minimum of what's useful to offer a **light-weight**, and **highly 
customizable** working environment that is **distraction free**, but I am mainly doing this to save goddamn battery 
life on my 5 yr old laptop. WSL2 + 50 browser tabs eats my CPU and RAM.  
- Window Manager: sway
- Terminal Emulator: alacritty
- Terminal Multiplexor: tmux
- Editor: neovim
- Shell: fish

### alacritty
GPU powered terminal emulator.
(Official github page of [alacritty](https://github.com/alacritty/alacritty)).
- uses fish shell as default
- uses the kanagawa-dragon theme

### fish
A more user-friendly UNIX shell that has auto-completion and great plugins.
- uses eza
- uses fisher plugin manager
- plugins: z, tide

### nvim
Lazy loaded with [lazy.nvim](https://github.com/LazyVim/LazyVim), but with minimal setup (the default setup 
includes a lot of unused plugins which is not ideal for the purposes of this setup).
- standard setup with [LSP](https://github.com/neovim/nvim-lspconfig) and [Mason](https://github.com/williamboman/mason.nvim) (package manager for [lsp-config](https://github.com/neovim/nvim-lspconfig)) for some main languages like Python, C/C++, lua, Go, Rust, and bash.
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for syntax highlighting and finding 
syntax errors.
- uses other plugins such as [plenary](https://github.com/nvim-lua/plenary.nvim), [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

### sway
Window manager with minimal config changes from default.
- uses wofi for menu, alacritty for terminal.
- conforms with the alacrity theme.  


Example sway-bar config (in sway/scripts/swaybar.sh) that displays brightness, sound, datetime, and battery level.  
(there are better ways to display these info but I am too lazy.)  
``` bash
bt=$(acpi | grep -oe "[0-9]\{1,2\}%') # battery percentage
dt=$(date +'%Y-%m-%d %X') # date in YYYY-MM-DD HH:MM:SS
lt=$(light) # the brightness level in float
sn=$(amixer sget Master | grep -oe '[0-9]\{1,2\}%' -m 1) # the volume of Master output.
echo "${lt}   ${sn}   ${dt}   ${bt} "
```
The above config requires: acpi, light, amixer (I think date is built-in).  
For UI elements, search on [nerdfonts cheatsheet](https://www.nerdfonts.com/cheat-sheet).

### tmux
Minimal config but with more intuitive keybinding.
- CTRL+S for leader key.
- Vi like binds.
