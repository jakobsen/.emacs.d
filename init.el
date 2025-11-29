;; use better-defaults
(add-to-list 'load-path "~/.emacs.d/better-defaults")
(require 'better-defaults)

;; Set up package manager
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(require 'package)

;; Make it look pretty
(set-frame-font "Maple Mono NF 15" nil t)
(load-theme 'catppuccin :no-confirm)

;; Add the option to create a new line from the middle of a line
(defun new-line-from-middle-of-line ()
  (interactive)
  (end-of-line)
  (comment-indent-new-line))

(defun new-line-above-from-middle-of-line ()
  (interactive)
  (move-beginning-of-line nil)
  (comment-indent-new-line)
  (forward-line -1)
  (indent-according-to-mode))


(global-set-key (kbd "<S-return>") 'new-line-from-middle-of-line)
(global-set-key (kbd "<C-S-return>") 'new-line-above-from-middle-of-line)
