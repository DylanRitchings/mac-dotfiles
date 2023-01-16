## Installation
```bash
git --git-dir="$HOME/.dotfiles/mac" --work-tree="$HOME" init
export GIT_DIR="$HOME/.dotfiles/mac"

cd $HOME/.dotfiles
git config status.showUntrackedFiles no

git remote add origin https://github.com/DylanRitchings/mac-dotfiles.git
git fetch

# WARNING: Overwrites files
git reset --hard origin/main
```
