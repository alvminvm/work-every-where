((auto-complete status "installed" recipe
		(:name auto-complete :after nil :features
		       (auto-complete-config)
		       :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
		       (popup fuzzy)
		       :post-init
		       (progn
			 (add-to-list 'ac-dictionary-directories
				      (expand-file-name "dict" default-directory))
			 (ac-config-default))))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
		("el-get.*\\.el$" "methods/")
		:load "el-get.el" :post-init
		(when
		    (memq 'el-get
			  (bound-and-true-p package-activated-list))
		  (message "Deleting melpa bootstrap el-get")
		  (unless package--initialized
		    (package-initialize t))
		  (when
		      (package-installed-p 'el-get)
		    (let
			((feats
			  (delete-dups
			   (el-get-package-features
			    (el-get-elpa-package-directory 'el-get)))))
		      (el-get-elpa-delete-package 'el-get)
		      (dolist
			  (feat feats)
			(unload-feature feat t))))
		  (require 'el-get))))
 (fuzzy status "installed" recipe
	(:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (helm status "installed" recipe
       (:name helm :after nil :description "Emacs incremental and narrowing framework" :type github :pkgname "emacs-helm/helm" :autoloads "helm-autoloads" :build
	      ("make")
	      :build/darwin
	      `(("make" ,(format "EMACS_COMMAND=%s" el-get-emacs)))
	      :build/windows-nt
	      (let
		  ((generated-autoload-file
		    (expand-file-name "helm-autoloads.el"))
		   \
		   (backup-inhibited t))
	      (update-directory-autoloads default-directory)
	      nil)))
(popup status "installed" recipe
(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :submodule nil :pkgname "auto-complete/popup-el"))
(smex status "installed" recipe
(:name smex :after nil :features
(smex)
:description "M-x interface with Ido-style fuzzy matching." :type github :pkgname "nonsequitur/smex" :post-init
(smex-initialize)))
(switch-window status "installed" recipe
(:name switch-window :after nil :features
(switch-window)
:description "A *visual* way to choose a window to switch to" :type github :pkgname "dimitri/switch-window"))
(tabbar status "installed" recipe
(:name tabbar :after nil :description "Display a tab bar in the header line." :type github :pkgname "dholm/tabbar" :lazy t))
(window-numbering status "installed" recipe
(:name window-numbering :website "http://nschum.de/src/emacs/window-numbering-mode/" :description "Assigns numbers to Emacs windows to allow easy window navigation." :type github :pkgname "nschum/window-numbering.el"))
(yasnippet status "installed" recipe
(:name yasnippet :after nil :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :compile "yasnippet.el" :submodule nil :build
(("git" "submodule" "update" "--init" "--" "snippets")))))
