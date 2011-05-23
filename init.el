;(autoload 'maxima "maxima" "Maxima interaction" t)
;;(setq auto-mode-alist (cons '("\\.max" . maxima-mode) auto-mode-alist)
;(autoload 'maxima-mode "maxima" "Maxima mode" t)
;(autoload 'emaxima-mode "emaxima" "EMaxima" t)
;(add-hook 'emaxima-mode-hook 'emaxima-mark-file-as-emaxima)
;(global-font-lock-mode 1)
;(add-hook 'c-mode-hook (function (lambda ()
;                                    (c-set-style "k&r")
;                                    (setq c-basic-offset 4)
;                                    (setq indent-tabs-mode nil))))
;

; Make shell mode handle colour output from shell commands
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

; Org-mode
(setq load-path (cons "~/.emacs.d/org-mode/lisp" load-path))
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-default-notes-file (expand-file-name "~/Documents/notes/capture.org"))

; automatic stuff below this point
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/Documents/notes/junk.org"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
