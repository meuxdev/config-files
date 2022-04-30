SETUP
=======================================================
1- Clone the repository on the path ~/
	$ git clone git@github.com:meuxdev/config-files.git

2- Rename the directory 
	$ mv ~/.config-files ~/.config-giles

3- Set the linking files
	$ ln -s ~/.config-files/.vimrc ~/
	$ ln -s ~/.config-files/.zshrc ~/
	$ ln -s ~/.config-files/.gitconfig ~/
		- Do this process just with the files you want to link and setup.

With the zshrc remember to update the changes with a source.
	$ source ~/.zshrc

With vim remember to install VimPlug and Vundle.

Vim Plug  -> https://github.com/junegunn/vim-plug
Vundle -> https://github.com/VundleVim/Vundle.vim

==============================================================

This are the files of the configuration that Im currently using.

Text editor: VIM
Terminal: ZSH

Including:

- vim config -> .vimrc
- zsh config -> .zshrc
- Git config -> .gitconfig
- Git config User -> .gitcongfig.user
