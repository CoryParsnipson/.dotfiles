# config

dotfile storage repository. Designed to be used with GNU stow.

# prerequisites

Need the following software installed:

* git
* stow (`sudo dnf install stow`)
* tmux

# installation

First we need to install all programs these dotfiles touch. Install the following:

1. neovim (`sudo dnf install neovim`).

1. nvchad (this requires cloning a repository into the nvim config directory)

1. tmux (`sudo dnf install tmux`)

# dotfiles setup

1. Browse to your home directory

1. Clone the `.dotfiles` repository to your home directory

1. `cd ~/.dotfiles`

1. `stow --adopt .` - this should symlink all files into their config locations.
   The adopt flag will first copy the file into the git repository directory
   before making a symlink.

1. Check the changed files with `git status` and `git diff`. If you don't want
   any of the changes, you can do `git checkout -f` to restore the repository
   state.
