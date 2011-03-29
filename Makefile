#
# Makefile for dotfiles
#

# If regular files exist in places were symlinks are being created,
# a warning is produced and the symlink is skipped.

warning=is a regular file; skipped.
BASH_FILES=bash_profile bashrc bash_prompt bash_aliases inputrc
BIN_FILES=bin
GIT_FILES=gitconfig gitignore
GPG_FILES=gnupg
VIM_FILES=vim vimrc
SSH_FILES=ssh

install: link-bash link-bin link-git link-gpg link-vim link-ssh

link-bash:
	@for file in $(BASH_FILES); do \
	if test -L ~/.$${file} || ! test -f ~/.$${file}; \
	then rm -f ~/.$${file}; ln -sn `pwd`/$${file} ~/.$${file}; \
	else echo "~/.$${file} $(warning)"; fi \
	done;

link-bin:
	@for file in $(BIN_FILES); do \
	if test -L ~/$${file} || ! test -f ~/$${file}; \
	then rm -f ~/$${file}; ln -sn `pwd`/$${file} ~/$${file}; \
	else print ".$${file} $(warning)"; fi \
	done;

link-git:
	@for file in $(GIT_FILES); do \
	if test -L ~/.$${file} || ! test -f ~/.$${file}; \
	then rm -f ~/.$${file}; ln -sn `pwd`/$${file} ~/.$${file}; \
	else echo "~/.$${file} $(warning)"; fi \
	done;

link-gpg:
	@for file in $(GPG_FILES); do \
	if test -L ~/.$${file} || ! test -f ~/.$${file}; \
	then rm -f ~/.$${file}; ln -sn `pwd`/$${file} ~/.$${file}; \
	else print ".$${file} $(warning)"; fi \
	done;

link-vim:
	@for file in $(VIM_FILES); do \
	if test -L ~/.$${file} || ! test -f ~/.$${file}; \
	then rm -f ~/.$${file}; ln -sn `pwd`/$${file} ~/.$${file}; \
	else print ".$${file} $(warning)"; fi \
	done;

link-ssh:
	@for file in $(SSH_FILES); do \
	if test -L ~/.$${file} || ! test -f ~/.$${file}; \
	then rm -f ~/.$${file}; ln -sn `pwd`/$${file} ~/.$${file}; \
	else print ".$${file} $(warning)"; fi \
	done;