install:
	ln -sf $(CURDIR)/shell_profile ~/.profile
	ln -sf $(CURDIR)/gitconfig ~/.gitconfig
	ln -sf $(CURDIR)/bin ~/.bin
	ln -sf $(CURDIR)/bash ~/.bash
	ln -sf $(CURDIR)/tmux.conf ~/.tmux.conf
	ln -sf $(CURDIR)/.spacemacs ~/.spacemacs
.PHONY : install

ansible:
	ansible-playbook -i $(CURDIR)/ansible/inventory/local -K $(CURDIR)/ansible/tools.yml
.PHONY : ansible
