install: install-vim install-zsh
 
install-vim:
	ln -s `pwd`/vim/vimrc ~/.vimrc

install-zsh:
	ln -s `pwd`/zsh/zshrc ~/.zshrc
	ln -s `pwd`/zsh/zsh_profile ~/.zsh_profile
	ln -s `pwd`/zsh/e-mux.zsh-theme ~/.oh-my-zsh/themes/e-mux.zsh-theme
