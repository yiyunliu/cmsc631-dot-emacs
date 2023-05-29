(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

;;; uncomment the following to enable the dark theme
;; (use-package modus-vivendi-theme
;;   :straight t
;;   :init
;;   (load-theme 'modus-vivendi t))

(use-package proof-general
  :straight t
  :custom
  (coq-compile-before-require t)
  (proof-splash-enable nil))

;;; make your first emacs experience less miserable
(use-package better-defaults
  :straight t
  :config
  (tool-bar-mode)
  (menu-bar-mode)
  (scroll-bar-mode))

;;; completion stuff
(use-package company-coq
  :straight t
  :config
  (add-hook 'coq-mode-hook #'company-coq-mode))
