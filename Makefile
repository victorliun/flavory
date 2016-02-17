install:
	ln -sf $(CURDIR)/shell_profile ~/.profile
	ln -sf $(CURDIR)/gitconfig ~/.gitconfig
.PHONY : install

ansible:
	ansible-playbook -K $(CURDIR)/ansible/tools.yml
.PHONY : ansible
