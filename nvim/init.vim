source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/plugin.vim
source $HOME/.config/nvim/style.vim
source $HOME/.config/nvim/keybinding.vim
source $HOME/.config/nvim/action.vim

for f in split(glob('$HOME/.config/nvim/languages/*.vim'), '\n')
    exe 'source' f
endfor
