## Installation

Backup current nvim config

```bash
$ cp -r .config/nvim .config/nvim-backup
$ mv .local/share/nvim/ .local/share/nvim.bak
```

Clone repo into `.config/nvim` folder

```bash
$ git clone https://github.com/NHDat2/vim-config.git ~/.config/nvim
```

Clone packer.nvim

```bash
$ git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Install packages

```bash
$ nvim +"lua require'plugins-list'; require'packer'.sync()"
```

Requirements
```bash
neovim | python package (global environment recommend)
ripgrep | package
ripgrep-all | package
fzf | package

```

## Screenshots

