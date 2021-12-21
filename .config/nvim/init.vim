
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'jreybert/vimagit'
Plug 'lukesmithxyz/vimling'
Plug 'vimwiki/vimwiki'
Plug 'bling/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
call plug#end()

autocmd BufWritePost ~/.local/src/configs/dwmblocks/blocks.h !notify-send "Rebuilding dwmblocks"; ~/.local/src/build dwmblocks && { pkill dwmblocks;dwmblocks & }
autocmd BufWritePost ~/.local/src/configs/dwm/config.h !notify-send "Rebuilding dwm"; ~/.local/src/build dwm && pkill dwm && { pkill dwmblocks;dwmblocks & }
autocmd BufWritePost ~/.local/src/configs/st/config.h !notify-send "Rebuilding st"; ~/.local/src/build st
autocmd BufWritePost ~/.local/src/configs/dmenu/config.h !notify-send "Rebuilding dmenu"; ~/.local/src/build dmenu
autocmd BufWritePost ~/.local/src/configs/slock/config.h !notify-send "Rebuilding slock"; ~/.local/src/build slock
autocmd BufWritePost ~/.local/src/configs/pinentry-dmenu/config.h !notify-send "Rebuilding pinentry-dmenu"; ~/.local/src/build pinentrydmenu

autocmd BufWritePost *.md !pandoc -s -o %:r.pdf %; zathura %:r.pdf
