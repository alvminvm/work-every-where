;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (global-auto-complete-mode auto-complete-mode auto-complete)
;;;;;;  "auto-complete/auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (21763 40825 488497 338000))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete/auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

(autoload 'auto-complete-mode "auto-complete/auto-complete" "\
AutoComplete mode

\(fn &optional ARG)" t nil)

(defvar global-auto-complete-mode nil "\
Non-nil if Global-Auto-Complete mode is enabled.
See the command `global-auto-complete-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-auto-complete-mode'.")

(custom-autoload 'global-auto-complete-mode "auto-complete/auto-complete" nil)

(autoload 'global-auto-complete-mode "auto-complete/auto-complete" "\
Toggle Auto-Complete mode in all buffers.
With prefix ARG, enable Global-Auto-Complete mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Complete mode is enabled in all buffers where
`auto-complete-mode-maybe' would do it.
See `auto-complete-mode' for more information on Auto-Complete mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (ac-config-default) "auto-complete/auto-complete-config"
;;;;;;  "auto-complete/auto-complete-config.el" (21763 40825 488497
;;;;;;  338000))
;;; Generated autoloads from auto-complete/auto-complete-config.el

(autoload 'ac-config-default "auto-complete/auto-complete-config" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads (el-get el-get-self-checksum el-get-checksum el-get-make-recipes
;;;;;;  el-get-cd el-get-reinstall el-get-remove el-get-self-update
;;;;;;  el-get-update-packages-of-type el-get-update-all el-get-update
;;;;;;  el-get-install el-get-version) "el-get/el-get" "el-get/el-get.el"
;;;;;;  (21763 40128 620494 706000))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-install "el-get/el-get" "\
Cause the named PACKAGE to be installed after all of its
dependencies (if any).

PACKAGE may be either a string or the corresponding symbol.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update "el-get/el-get" "\
Update PACKAGE.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-remove "el-get/el-get" "\
Remove any PACKAGE that is know to be installed or required.

\(fn PACKAGE)" t nil)

(autoload 'el-get-reinstall "el-get/el-get" "\
Remove PACKAGE and then install it again.

\(fn PACKAGE)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE)" t nil)

(autoload 'el-get-self-checksum "el-get/el-get" "\
Compute the checksum of the running version of el-get itself.

Also put the checksum in the kill-ring.

\(fn)" t nil)

(autoload 'el-get "el-get/el-get" "\
Ensure that packages have been downloaded once and init them as needed.

This will not update the sources by using `apt-get install' or
`git pull', but it will ensure that:

* the packages have been installed
* load-path is set so their elisp files can be found
* Info-directory-list is set so their info files can be found
* Autoloads have been prepared and evaluated for each package
* Any post-installation setup (e.g. `(require 'feature)') happens

When SYNC is nil (the default), all installations run
concurrently, in the background.

When SYNC is 'sync, each package will be installed synchronously,
and any error will stop it all.

Please note that the `el-get-init' part of `el-get' is always
done synchronously. There's `byte-compile' support though, and
the packages you use are welcome to use `autoload' too.

PACKAGES is expected to be a list of packages you want to install
or init.  When PACKAGES is omited (the default), the list of
already installed packages is considered.

\(fn &optional SYNC &rest PACKAGES)" nil nil)

;;;***

;;;### (autoloads (el-get-bundle! el-get-bundle el-get-bundle-el-get)
;;;;;;  "el-get/el-get-bundle" "el-get/el-get-bundle.el" (21763 40128
;;;;;;  616494 706000))
;;; Generated autoloads from el-get/el-get-bundle.el

(autoload 'el-get-bundle-el-get "el-get/el-get-bundle" "\


\(fn SRC)" nil nil)

(autoload 'el-get-bundle "el-get/el-get-bundle" "\
Install PACKAGE and run initialization FORM.

PACKAGE can be either a simple package name or a package name
with a modifier before the name to specify local recipe source
information:

* `<owner>/' : specifies a Github owner name
* `gist:<id>' : specifies a Gist ID
* `<type>:' : specifies a type of the package source

If `FEATURE in PACKAGE' form is used instead of PACKAGE, then
that FEATURE is `require'd after installing PACKAGE.  You can
also use `el-get-bundle!' macro if FEATURE and PACKAGE are the
same.  If you wish to `require' more than one feature, then use
`:features' property in FORM.

The initialization FORM may start with a property list that
describes a local recipe.  The FORM after the property list is
treated as initialization code, which is actually an `:after'
property of the local recipe.

A copy of the initialization code is stored in a directory
specified by `el-get-bundle-init-directory' and its byte-compiled
version is used if `el-get-bundle-byte-compile' is non-nil.

\(fn PACKAGE &rest FORM)" nil t)

(put 'el-get-bundle 'lisp-indent-function 'defun)

(autoload 'el-get-bundle! "el-get/el-get-bundle" "\
Install PACKAGE and run initialization form.
It is the same as `el-get-bundle' except that PACKAGE is explicitly
required.

\(fn PACKAGE &rest ARGS)" nil t)

(put 'el-get-bundle! 'lisp-indent-function 'defun)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get/el-get-list-packages"
;;;;;;  "el-get/el-get-list-packages.el" (21763 40128 620494 706000))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (pkg-info-version-info pkg-info-package-version
;;;;;;  pkg-info-defining-library-version pkg-info-defining-library-original-version
;;;;;;  pkg-info-library-version pkg-info-library-original-version)
;;;;;;  "pkg-info/pkg-info" "pkg-info/pkg-info.el" (21769 33673 476868
;;;;;;  421000))
;;; Generated autoloads from pkg-info/pkg-info.el

(autoload 'pkg-info-library-original-version "pkg-info/pkg-info" "\
Get the original version in the header of LIBRARY.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no X-Original-Version
header.

See Info node `(elisp)Library Headers' for more information
about library headers.

\(fn LIBRARY &optional SHOW)" t nil)

(autoload 'pkg-info-library-version "pkg-info/pkg-info" "\
Get the version in the header of LIBRARY.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no proper header.

See Info node `(elisp)Library Headers' for more information
about library headers.

\(fn LIBRARY &optional SHOW)" t nil)

(autoload 'pkg-info-defining-library-original-version "pkg-info/pkg-info" "\
Get the original version of the library defining FUNCTION.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

\(fn FUNCTION &optional SHOW)" t nil)

(autoload 'pkg-info-defining-library-version "pkg-info/pkg-info" "\
Get the version of the library defining FUNCTION.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

\(fn FUNCTION &optional SHOW)" t nil)

(autoload 'pkg-info-package-version "pkg-info/pkg-info" "\
Get the version of an installed PACKAGE.

If SHOW is non-nil, show the version in the minibuffer.

Return the version as list, or nil if PACKAGE is not installed.

\(fn PACKAGE &optional SHOW)" t nil)

(autoload 'pkg-info-version-info "pkg-info/pkg-info" "\
Obtain complete version info for LIBRARY and PACKAGE.

LIBRARY is a symbol denoting a named feature, or a library name
as string.  PACKAGE is a symbol denoting an ELPA package.  If
omitted or nil, default to LIBRARY.

If SHOW is non-nil, show the version in the minibuffer.

When called interactively, prompt for LIBRARY.  When called
interactively with prefix argument, prompt for PACKAGE as well.

Return a string with complete version information for LIBRARY.
This version information contains the version from the headers of
LIBRARY, and the version of the installed PACKAGE, the LIBRARY is
part of.  If PACKAGE is not installed, or if the PACKAGE version
is the same as the LIBRARY version, do not include a package
version.

\(fn LIBRARY &optional PACKAGE SHOW)" t nil)

;;;***

;;;### (autoloads (helm-projectile helm-projectile-ag helm-projectile-ack
;;;;;;  helm-projectile-grep helm-projectile-off helm-projectile-on
;;;;;;  helm-projectile-find-other-file helm-projectile-find-file-dwim
;;;;;;  helm-projectile-fuzzy-match) "projectile/helm-projectile"
;;;;;;  "projectile/helm-projectile.el" (21769 33981 636869 585000))
;;; Generated autoloads from projectile/helm-projectile.el

(defvar helm-projectile-fuzzy-match t "\
Enable fuzzy matching for Helm Projectile commands.
This needs to be set before loading helm-projectile.")

(custom-autoload 'helm-projectile-fuzzy-match "projectile/helm-projectile" t)

(autoload 'helm-projectile-find-file-dwim "projectile/helm-projectile" "\
Find file at point based on context.

\(fn)" t nil)

(autoload 'helm-projectile-find-other-file "projectile/helm-projectile" "\
Switch between files with the same name but different extensions using Helm.
With FLEX-MATCHING, match any file that contains the base name of current file.
Other file extensions can be customized with the variable `projectile-other-file-alist'.

\(fn &optional FLEX-MATCHING)" t nil)

(autoload 'helm-projectile-on "projectile/helm-projectile" "\
Turn on helm-projectile key bindings.

\(fn)" t nil)

(autoload 'helm-projectile-off "projectile/helm-projectile" "\
Turn off helm-projectile key bindings.

\(fn)" t nil)

(autoload 'helm-projectile-grep "projectile/helm-projectile" "\
Helm version of projectile-grep.

\(fn)" t nil)

(autoload 'helm-projectile-ack "projectile/helm-projectile" "\
Helm version of projectile-ack.

\(fn)" t nil)

(autoload 'helm-projectile-ag "projectile/helm-projectile" "\
Helm version of projectile-ag.

\(fn &optional OPTIONS)" t nil)

(autoload 'helm-projectile "projectile/helm-projectile" "\
Use projectile with Helm instead of ido.

With a prefix ARG invalidates the cache first.
If invoked outside of a project, displays a list of known projects to jump.

\(fn &optional ARG)" t nil)

(eval-after-load 'projectile '(progn (define-key projectile-command-map (kbd "h") 'helm-projectile)))

;;;***

;;;### (autoloads (projectile-persp-switch-project) "projectile/persp-projectile"
;;;;;;  "projectile/persp-projectile.el" (21769 33981 636869 585000))
;;; Generated autoloads from projectile/persp-projectile.el

(autoload 'projectile-persp-switch-project "projectile/persp-projectile" "\
Switch to a project or perspective we have visited before.
If the perspective of corresponding project does not exist, this
function will call `persp-switch' to create one and switch to
that before `projectile-switch-project' invokes
`projectile-switch-project-action'.

Otherwise, this function calls `persp-switch' to switch to an
existing perspective of the project unless we're already in that
perspective.

\(fn PROJECT-TO-SWITCH)" t nil)

;;;***

;;;### (autoloads (projectile-global-mode projectile-mode projectile-mode-line
;;;;;;  projectile-commander projectile-remove-current-project-from-known-projects
;;;;;;  projectile-clear-known-projects projectile-cleanup-known-projects
;;;;;;  projectile-find-file-in-known-projects projectile-recentf
;;;;;;  projectile-vc projectile-dired projectile-save-project-buffers
;;;;;;  projectile-kill-buffers projectile-run-async-shell-command-in-root
;;;;;;  projectile-run-shell-command-in-root projectile-run-command-in-root
;;;;;;  projectile-find-tag projectile-regenerate-tags projectile-toggle-between-implementation-and-test
;;;;;;  projectile-find-implementation-or-test-other-window projectile-find-file-other-window
;;;;;;  projectile-find-file projectile-find-file-dwim-other-window
;;;;;;  projectile-find-file-dwim projectile-multi-occur projectile-project-buffers-other-buffer
;;;;;;  projectile-display-buffer projectile-switch-to-buffer-other-window
;;;;;;  projectile-switch-to-buffer projectile-cache-current-file)
;;;;;;  "projectile/projectile" "projectile/projectile.el" (21769
;;;;;;  33981 636869 585000))
;;; Generated autoloads from projectile/projectile.el

(autoload 'projectile-cache-current-file "projectile/projectile" "\
Add the currently visited file to the cache.

\(fn)" t nil)

(autoload 'projectile-switch-to-buffer "projectile/projectile" "\
Switch to a project buffer.

\(fn)" t nil)

(autoload 'projectile-switch-to-buffer-other-window "projectile/projectile" "\
Switch to a project buffer and show it in another window.

\(fn)" t nil)

(autoload 'projectile-display-buffer "projectile/projectile" "\
Display a project buffer in another window without selecting it.

\(fn)" t nil)

(autoload 'projectile-project-buffers-other-buffer "projectile/projectile" "\
Switch to the most recently selected buffer project buffer.
Only buffers not visible in windows are returned.

\(fn)" t nil)

(autoload 'projectile-multi-occur "projectile/projectile" "\
Do a `multi-occur' in the project's buffers.

\(fn)" t nil)

(autoload 'projectile-find-file-dwim "projectile/projectile" "\
Jump to a project's files using completion based on context.

With a prefix ARG invalidates the cache first.

If point is on a filename, Projectile first tries to search for that
file in project:

- If it finds just a file, it switches to that file instantly.  This works even
if the filename is incomplete, but there's only a single file in the current project
that matches the filename at point.  For example, if there's only a single file named
\"projectile/projectile.el\" but the current filename is \"projectile/proj\" (incomplete),
`projectile-find-file' still switches to \"projectile/projectile.el\" immediately
 because this is the only filename that matches.

- If it finds a list of files, the list is displayed for selecting.  A list of
files is displayed when a filename appears more than one in the project or the
filename at point is a prefix of more than two files in a project.  For example,
if `projectile-find-file' is executed on a filepath like \"projectile/\", it lists
the content of that directory.  If it is executed on a partial filename like
 \"projectile/a\", a list of files with character 'a' in that directory is presented.

- If it finds nothing, display a list of all files in project for selecting.

\(fn &optional ARG)" t nil)

(autoload 'projectile-find-file-dwim-other-window "projectile/projectile" "\
Jump to a project's files using completion based on context in other window.

With a prefix ARG invalidates the cache first.

If point is on a filename, Projectile first tries to search for that
file in project:

- If it finds just a file, it switches to that file instantly.  This works even
if the filename is incomplete, but there's only a single file in the current project
that matches the filename at point.  For example, if there's only a single file named
\"projectile/projectile.el\" but the current filename is \"projectile/proj\" (incomplete),
`projectile-find-file' still switches to \"projectile/projectile.el\"
immediately because this is the only filename that matches.

- If it finds a list of files, the list is displayed for selecting.  A list of
files is displayed when a filename appears more than one in the project or the
filename at point is a prefix of more than two files in a project.  For example,
if `projectile-find-file' is executed on a filepath like \"projectile/\", it lists
the content of that directory.  If it is executed on a partial filename
like \"projectile/a\", a list of files with character 'a' in that directory
is presented.

- If it finds nothing, display a list of all files in project for selecting.

\(fn &optional ARG)" t nil)

(autoload 'projectile-find-file "projectile/projectile" "\
Jump to a project's file using completion.
With a prefix ARG invalidates the cache first.

\(fn &optional ARG)" t nil)

(autoload 'projectile-find-file-other-window "projectile/projectile" "\
Jump to a project's file using completion and show it in another window.

With a prefix ARG invalidates the cache first.

\(fn &optional ARG)" t nil)

(autoload 'projectile-find-implementation-or-test-other-window "projectile/projectile" "\
Open matching implementation or test file in other window.

\(fn)" t nil)

(autoload 'projectile-toggle-between-implementation-and-test "projectile/projectile" "\
Toggle between an implementation file and its test file.

\(fn)" t nil)

(autoload 'projectile-regenerate-tags "projectile/projectile" "\
Regenerate the project's [e|g]tags.

\(fn)" t nil)

(autoload 'projectile-find-tag "projectile/projectile" "\
Find tag in project.

\(fn)" t nil)

(autoload 'projectile-run-command-in-root "projectile/projectile" "\
Invoke `execute-extended-command' in the project's root.

\(fn)" t nil)

(autoload 'projectile-run-shell-command-in-root "projectile/projectile" "\
Invoke `shell-command' in the project's root.

\(fn)" t nil)

(autoload 'projectile-run-async-shell-command-in-root "projectile/projectile" "\
Invoke `async-shell-command' in the project's root.

\(fn)" t nil)

(autoload 'projectile-kill-buffers "projectile/projectile" "\
Kill all project buffers.

\(fn)" t nil)

(autoload 'projectile-save-project-buffers "projectile/projectile" "\
Save all project buffers.

\(fn)" t nil)

(autoload 'projectile-dired "projectile/projectile" "\
Open `dired' at the root of the project.

\(fn)" t nil)

(autoload 'projectile-vc "projectile/projectile" "\
Open `vc-dir' at the root of the project.

For git projects `magit-status-internal' is used if available.

\(fn &optional PROJECT-ROOT)" t nil)

(autoload 'projectile-recentf "projectile/projectile" "\
Show a list of recently visited files in a project.

\(fn)" t nil)

(autoload 'projectile-find-file-in-known-projects "projectile/projectile" "\
Jump to a file in any of the known projects.

\(fn)" t nil)

(autoload 'projectile-cleanup-known-projects "projectile/projectile" "\
Remove known projects that don't exist anymore.

\(fn)" t nil)

(autoload 'projectile-clear-known-projects "projectile/projectile" "\
Clear both `projectile-known-projects' and `projectile-known-projects-file'.

\(fn)" t nil)

(autoload 'projectile-remove-current-project-from-known-projects "projectile/projectile" "\
Remove the current project from the list of known projects.

\(fn)" t nil)

(autoload 'projectile-commander "projectile/projectile" "\
Execute a Projectile command with a single letter.
The user is prompted for a single character indicating the action to invoke.
The `?' character describes then
available actions.

See `def-projectile-commander-method' for defining new methods.

\(fn)" t nil)

(defvar projectile-mode-line '(:eval (format " Projectile[%s]" (projectile-project-name))) "\
Mode line lighter for Projectile.

The value of this variable is a mode line template as in
`mode-line-format'.  See Info Node `(elisp)Mode Line Format' for
details about mode line templates.

Customize this variable to change how Projectile displays its
status in the mode line.  The default value displays the project
name.  Set this variable to nil to disable the mode line
entirely.")

(custom-autoload 'projectile-mode-line "projectile/projectile" t)

(autoload 'projectile-mode "projectile/projectile" "\
Minor mode to assist project management and navigation.

When called interactively, toggle `projectile-mode'.  With prefix
ARG, enable `projectile-mode' if ARG is positive, otherwise disable
it.

When called from Lisp, enable `projectile-mode' if ARG is omitted,
nil or positive.  If ARG is `toggle', toggle `projectile-mode'.
Otherwise behave as if called interactively.

\\{projectile-mode-map}

\(fn &optional ARG)" t nil)

(defvar projectile-global-mode nil "\
Non-nil if Projectile-Global mode is enabled.
See the command `projectile-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `projectile-global-mode'.")

(custom-autoload 'projectile-global-mode "projectile/projectile" nil)

(autoload 'projectile-global-mode "projectile/projectile" "\
Toggle Projectile mode in all buffers.
With prefix ARG, enable Projectile-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Projectile mode is enabled in all buffers where
`projectile-mode' would do it.
See `projectile-mode' for more information on Projectile mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (smex-initialize smex-major-mode-commands smex)
;;;;;;  "smex/smex" "smex/smex.el" (21763 40847 828497 422000))
;;; Generated autoloads from smex/smex.el

(autoload 'smex "smex/smex" "\


\(fn)" t nil)

(autoload 'smex-major-mode-commands "smex/smex" "\
Like `smex', but limited to commands that are relevant to the active major mode.

\(fn)" t nil)

(autoload 'smex-initialize "smex/smex" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (switch-window delete-other-window) "switch-window/switch-window"
;;;;;;  "switch-window/switch-window.el" (21763 40844 256497 409000))
;;; Generated autoloads from switch-window/switch-window.el

(autoload 'delete-other-window "switch-window/switch-window" "\
Display an overlay in each window showing a unique key, then
ask user which window to delete

\(fn)" t nil)

(autoload 'switch-window "switch-window/switch-window" "\
Display an overlay in each window showing a unique key, then
ask user for the window where move to

\(fn)" t nil)

;;;***

;;;### (autoloads (revive-save-desktop revive-desktop resume save-current-configuration
;;;;;;  wipe restore-window-configuration current-window-configuration-printable)
;;;;;;  "tabbar/revive" "tabbar/revive.el" (21763 40839 700497 391000))
;;; Generated autoloads from tabbar/revive.el

(autoload 'current-window-configuration-printable "tabbar/revive" "\
Return the printable current-window-configuration.
This configuration will be stored by restore-window-configuration.
Returned configurations are list of:
'(Screen-Width Screen-Height Edge-List Buffer-List)

Edge-List is a return value of revive:all-window-edges, list of all
window-edges whose first member is always of north west window.

Buffer-List is a list of buffer property list of all windows.  This
property lists are stored in order corresponding to Edge-List.  Buffer
property list is formed as
'((buffer-file-name) (buffer-name) (point) (window-start) tabs).

\(fn)" nil nil)

(autoload 'restore-window-configuration "tabbar/revive" "\
Restore the window configuration.
Configuration CONFIG should be created by
current-window-configuration-printable.

\(fn CONFIG)" nil nil)

(autoload 'wipe "tabbar/revive" "\
Wipe Emacs.

\(fn)" t nil)

(autoload 'save-current-configuration "tabbar/revive" "\
Save current window/buffer configuration into configuration file.

\(fn &optional NUM)" t nil)

(autoload 'resume "tabbar/revive" "\
Resume window/buffer configuration.
Configuration should be saved by save-current-configuration.

\(fn &optional NUM)" t nil)

(autoload 'revive-desktop "tabbar/revive" "\
Restores the application state.
Similar to `resume', though using `desktop' to restore buffers.

\(fn &optional FILE AUTO)" t nil)

(autoload 'revive-save-desktop "tabbar/revive" "\
Save application state with `desktop' and `revive'.
Similar to `save-current-configuration', 
though uses `desktop' to restore buffers.

\(fn &optional FILE AUTO)" t nil)

;;;***

;;;### (autoloads (tabbar-mwheel-mode tabbar-mode tabbar-local-mode
;;;;;;  tabbar-mwheel-switch-group tabbar-mwheel-switch-tab tabbar-mwheel-forward-tab
;;;;;;  tabbar-mwheel-backward-tab tabbar-mwheel-forward-group tabbar-mwheel-backward-group
;;;;;;  tabbar-mwheel-forward tabbar-mwheel-backward tabbar-press-scroll-right
;;;;;;  tabbar-press-scroll-left tabbar-press-home tabbar-forward-tab
;;;;;;  tabbar-backward-tab tabbar-forward-group tabbar-backward-group
;;;;;;  tabbar-forward tabbar-backward) "tabbar/tabbar" "tabbar/tabbar.el"
;;;;;;  (21763 40839 704497 391000))
;;; Generated autoloads from tabbar/tabbar.el

(autoload 'tabbar-backward "tabbar/tabbar" "\
Select the previous available tab.
Depend on the setting of the option `tabbar-cycle-scope'.

\(fn)" t nil)

(autoload 'tabbar-forward "tabbar/tabbar" "\
Select the next available tab.
Depend on the setting of the option `tabbar-cycle-scope'.

\(fn)" t nil)

(autoload 'tabbar-backward-group "tabbar/tabbar" "\
Go to selected tab in the previous available group.

\(fn)" t nil)

(autoload 'tabbar-forward-group "tabbar/tabbar" "\
Go to selected tab in the next available group.

\(fn)" t nil)

(autoload 'tabbar-backward-tab "tabbar/tabbar" "\
Select the previous visible tab.

\(fn)" t nil)

(autoload 'tabbar-forward-tab "tabbar/tabbar" "\
Select the next visible tab.

\(fn)" t nil)

(autoload 'tabbar-press-home "tabbar/tabbar" "\
Press the tab bar home button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-press-scroll-left "tabbar/tabbar" "\
Press the tab bar scroll-left button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-press-scroll-right "tabbar/tabbar" "\
Press the tab bar scroll-right button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-mwheel-backward "tabbar/tabbar" "\
Select the previous available tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward "tabbar/tabbar" "\
Select the next available tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-backward-group "tabbar/tabbar" "\
Go to selected tab in the previous available group.
If there is only one group, select the previous visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward-group'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward-group "tabbar/tabbar" "\
Go to selected tab in the next available group.
If there is only one group, select the next visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward-group'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-backward-tab "tabbar/tabbar" "\
Select the previous visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward-tab'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward-tab "tabbar/tabbar" "\
Select the next visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward-tab'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-switch-tab "tabbar/tabbar" "\
Select the next or previous tab according to EVENT.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-switch-group "tabbar/tabbar" "\
Select the next or previous group of tabs according to EVENT.

\(fn EVENT)" t nil)

(autoload 'tabbar-local-mode "tabbar/tabbar" "\
Toggle local display of the tab bar.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.
When turned on, if a local header line is shown, it is hidden to show
the tab bar.  The tab bar is locally hidden otherwise.  When turned
off, if a local header line is hidden or the tab bar is locally
hidden, it is shown again.  Signal an error if Tabbar mode is off.

\(fn &optional ARG)" t nil)

(defvar tabbar-mode nil "\
Non-nil if Tabbar mode is enabled.
See the command `tabbar-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tabbar-mode'.")

(custom-autoload 'tabbar-mode "tabbar/tabbar" nil)

(autoload 'tabbar-mode "tabbar/tabbar" "\
Toggle display of a tab bar in the header line.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.

\\{tabbar-mode-map}

\(fn &optional ARG)" t nil)

(defvar tabbar-mwheel-mode nil "\
Non-nil if Tabbar-Mwheel mode is enabled.
See the command `tabbar-mwheel-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tabbar-mwheel-mode'.")

(custom-autoload 'tabbar-mwheel-mode "tabbar/tabbar" nil)

(autoload 'tabbar-mwheel-mode "tabbar/tabbar" "\
Toggle use of the mouse wheel to navigate through tabs or groups.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.

\\{tabbar-mwheel-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (window-numbering-mode) "window-numbering/window-numbering"
;;;;;;  "window-numbering/window-numbering.el" (21763 40851 148497
;;;;;;  435000))
;;; Generated autoloads from window-numbering/window-numbering.el

(defvar window-numbering-mode nil "\
Non-nil if Window-Numbering mode is enabled.
See the command `window-numbering-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `window-numbering-mode'.")

(custom-autoload 'window-numbering-mode "window-numbering/window-numbering" nil)

(autoload 'window-numbering-mode "window-numbering/window-numbering" "\
A minor mode that assigns a number to each window.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (yas-global-mode yas-minor-mode) "yasnippet/yasnippet"
;;;;;;  "yasnippet/yasnippet.el" (21763 40774 888497 147000))
;;; Generated autoloads from yasnippet/yasnippet.el

(autoload 'yas-minor-mode "yasnippet/yasnippet" "\
Toggle YASnippet mode.

When YASnippet mode is enabled, `yas-expand', normally bound to
the TAB key, expands snippets of code depending on the major
mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

Key bindings:
\\{yas-minor-mode-map}

\(fn &optional ARG)" t nil)

(defvar yas-global-mode nil "\
Non-nil if Yas-Global mode is enabled.
See the command `yas-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `yas-global-mode'.")

(custom-autoload 'yas-global-mode "yasnippet/yasnippet" nil)

(autoload 'yas-global-mode "yasnippet/yasnippet" "\
Toggle Yas minor mode in all buffers.
With prefix ARG, enable Yas-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Yas minor mode is enabled in all buffers where
`yas-minor-mode-on' would do it.
See `yas-minor-mode' for more information on Yas minor mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("auto-complete/auto-complete-pkg.el" "dash/dash-functional.el"
;;;;;;  "dash/dash.el" "el-get/el-get-autoloading.el" "el-get/el-get-build.el"
;;;;;;  "el-get/el-get-byte-compile.el" "el-get/el-get-core.el" "el-get/el-get-custom.el"
;;;;;;  "el-get/el-get-dependencies.el" "el-get/el-get-install.el"
;;;;;;  "el-get/el-get-methods.el" "el-get/el-get-notify.el" "el-get/el-get-recipes.el"
;;;;;;  "el-get/el-get-status.el" "epl/epl.el" "f/f.el" "fuzzy/fuzzy.el"
;;;;;;  "popup/popup.el" "s/s.el" "tabbar/aquamacs-compat.el" "tabbar/aquamacs-tabbar.el"
;;;;;;  "tabbar/aquamacs-tools.el" "tabbar/one-buffer-one-frame.el"
;;;;;;  "tabbar/tabbar-window.el" "window-numbering/tests.el" "yasnippet/yasnippet-debug.el"
;;;;;;  "yasnippet/yasnippet-tests.el") (21769 38364 219805 547000))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
