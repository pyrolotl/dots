SHELL=/usr/bin/env bash
DOTDIR := ${HOME}/.cfg
CHECK() = f() { \
		if [[ -d $$1 ]] || [[ -f $$1 ]] || [[ -L $$1 ]]; then \
			return 0; \
		else \
			return 1; \
	   	fi \
	}; f

all: _essentials sway foot nvim

_essentials: # for vim, gtk, npm, git, shells, ...
	@${CHECK()} ${HOME}/.config || mkdir ${HOME}/.config
	
	@${CHECK()} ${HOME}/.config/user-dirs.dirs ] && rm -rf ${HOME}/.config/user-dirs.dirs
	@ln -vsf {${DOTDIR},${HOME}}/.config/user-dirs.dirs
	
	@${CHECK()} ${HOME}/.config/gtk-3.0 ] && rm -rf ${HOME}/.config/gtk-3.0
	@ln -vsf {${DOTDIR},${HOME}}/.config/gtk-3.0
	
	@for i in vimrc gtkrc\-2\.0 npmrc gitconfig bash{_profile,rc,env} zshrc aliases; \
		do ${CHECK()} ${HOME}/.$$i && rm -rf ${HOME}/.$$i; \
		ln -vsf {${DOTDIR},${HOME}}/.$$i; \
	done
sway:
	@${CHECK()} ${HOME}/.config/$@ && rm -rf ${HOME}/.config/$@
	@ln -vsf {${DOTDIR},${HOME}}/.config/$@
foot:
	@${CHECK()} ${HOME}/.config/$@ && rm -rf ${HOME}/.config/$@
	@ln -vsf {${DOTDIR},${HOME}}/.config/$@
nvim:
	@${CHECK()} ${HOME}/.config/$@ && rm -rf ${HOME}/.config/$@
	@ln -vsf {${DOTDIR},${HOME}}/.config/$@
