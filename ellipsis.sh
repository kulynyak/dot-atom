#!/bin/bash

##############################################################################

 pkg.pull() {
    git.pull
    case $(os.platform) in
      osx)
        osx
        ;;
      linux)
        linux
        ;;
  	esac
		${PKG_PATH}/lib/apm
 }

##############################################################################

 linux() {
	 ${PKG_PATH}/lib/apt
 }

 ##############################################################################

 osx() {
   ${PKG_PATH}/lib/brew
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
 	${PKG_PATH}/lib/apm
 }
