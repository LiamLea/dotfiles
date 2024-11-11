#!/bin/bash

work_dir="$(readlink -f `dirname "$0"`)"

if [[ "$SHELL" =~ "bash" ]]; then
    echo "Running in bash"
elif [[ "$SHELL" =~ "zsh" ]]; then
    echo "Running in zsh"
    mv ~/.zshrc /tmp/ || echo ""
    ln -s $work_dir/.zshrc ~/.zshrc
else
    echo "Running in another shell"
fi

mv ~/.vimrc /tmp/ || echo ""
ln -s $work_dir/.vimrc ~/.vimrc

mv ~/.config/starship.toml /tmp/ || echo ""
ln -s $work_dir/.config/starship.toml ~/.config/starship.toml

