#!/bin/bash

# To obtain fresh list
# apm list --installed --bare | sed 's/@.*$//'
#

##############################################################################

inst_packages() {
	apm install Sublime-Style-Column-Selection
	apm install actual-solarized-syntax
	apm install atom-alignment
	apm install atom-beautify
	apm install atom-solarized-dark-ui
	apm install atom-typescript
	apm install auto-detect-indentation
	apm install block-comment-lines
	apm install change-case
	apm install chary-tree-view
	apm install chocula-syntax
	apm install close-on-left
	apm install color-picker
	apm install default-language
	apm install delete-lines
	apm install docblockr
	apm install dracula-theme
	apm install editorconfig
	apm install file-icons
	apm install find-selection
	apm install git-blame
	apm install git-plus
	apm install git-time-machine
	apm install haskell-grammar
	apm install hex
	apm install highlight-selected
	apm install js-autoimport
	apm install js-refactor
	apm install jscs-fixer
	apm install jsonlint
	apm install jumpy
	apm install language-awk
	apm install language-dots
	apm install language-fish-shell
	apm install language-ini
	apm install language-javascript-jsx
	apm install language-js-specs
	apm install language-swift
	apm install language-tmux
	apm install last-cursor-position
	apm install lines
	apm install linter
	apm install linter-csslint
	apm install linter-htmlhint
	apm install linter-javac
	apm install linter-jshint
	apm install linter-markdownlint
	apm install linter-package-json-validator
	apm install linter-scspell
	apm install linter-tslint
	apm install local-history
	apm install merge-conflicts
	apm install minimap
	apm install monokai-tweaked-syntax
	apm install monokai-tweaked-ui
	apm install native-ui
	apm install navigation-history
	apm install open-recent
	apm install package-list
	apm install pigments
	apm install project-manager
	apm install react
	apm install react-es6-snippets
	apm install refactor
	apm install save-session
	apm install set-syntax
	apm install solarized-dark-ui
	apm install solarized-light-syntax-modified
	apm install solarized-light-ui
	apm install solarized-one-dark-syntax
	apm install solarized-one-light-ui
	apm install sort-lines
	apm install source-preview-react
	apm install symbols-tree-view
	apm install tab-close-shift-click
	apm install text-pastry
	apm install todo-show
	apm install tree-view-copy-relative-path
	apm install tree-view-git-branch
	apm install tree-view-git-status
}

##############################################################################

 pkg.pull() {
    git.pull
		inst_packages
 }

##############################################################################

 linux() {
	 echo ""
 }

 ##############################################################################

 osx() {
	 	brew cask install atom
 }

 ##############################################################################

pkg.install() {
		case $(os.platform) in
	 		osx)
	 			osx
	 			;;
	 		linux)
	 			linux
	 			;;
		esac
 	inst_packages
 }
