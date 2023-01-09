# dotfiles

## Install instructions
```bash
git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" init
export GIT_DIR="$HOME/.dotfiles"
git config status.showUntrackedFiles no

git remote add origin https://github.com/DylanRitchings/dotfiles.git
git fetch

# WARNING: Overwrites files
git reset --hard origin/main
```
