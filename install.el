;; Install org-mode

(defun install ()
  "Install prerequisites from ELPA"
  (package-initialize)
  ;; org-ref is available on melpa:
  (setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))
  (package-refresh-contents)
  ;; Emacs comes with an outdated version of org.
  ;; Need to be more specific to install newer version:
  (package-install 'org)
  (package-install 'htmlize))

