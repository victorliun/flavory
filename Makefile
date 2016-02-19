install:
	ln -sf $(CURDIR)/shell_profile ~/.profile
	ln -sf $(CURDIR)/gitconfig ~/.gitconfig
	ln -sf $(CURDIR/bin ~/bin
	ln -sf $(CURDIR/tmux.conf ~/.tmux.conf
.PHONY : install

ansible:
	ansible-playbook -K $(CURDIR)/ansible/tools.yml
.PHONY : ansible
