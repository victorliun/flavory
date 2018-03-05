install:
	ln -sf $(CURDIR)/shell_profile ~/.profile
	ln -sf $(CURDIR)/gitconfig ~/.gitconfig
	ln -nsf $(CURDIR)/bin ~/.bin
	ln -nsf $(CURDIR)/bash ~/.bash
	ln -sf $(CURDIR)/tmux.conf ~/.tmux.conf
	ln -sf $(CURDIR)/.spacemacs ~/.spacemacs
	ln -sf $(HOME)/spacemacs ~/.emacs.d
.PHONY : install

ansible:
	ansible-playbook -i $(CURDIR)/ansible/inventory/local -K $(CURDIR)/ansible/tools.yml
.PHONY : ansible
