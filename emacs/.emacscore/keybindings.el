;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;        Key bindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; The F10, F10, F11, F12 are free
(global-set-key [f1]  'dired-other-window)
(global-set-key [f2]  'sudo-find-file)
(global-set-key [f3]  'todo)
(global-set-key [f4]  'eval-buffer)
(global-set-key [f5]  'open-terminal)
(global-set-key [f6]  'rename-file-and-buffer)
(global-set-key [f7]  'delete-file)
(global-set-key [f8]  'rgrep)
(global-set-key [f9]  'ibuffer)
(global-set-key [f10] 'start-irc)

;;
;; Org-mode keybinding
;;
(global-unset-key "\C-o")
(global-set-key (kbd "C-o t")   'todo)
(global-set-key (kbd "C-o i")   'important_todo)

;;
;; external applications
;;
(global-set-key (kbd "C-x f")   'ftp)
(global-set-key (kbd "C-x t")   'telnet)
(global-set-key (kbd "C-x g")   'gdb)
(global-set-key (kbd "C-x RET") 'calc)
(global-set-key (kbd "C-x c")   'calendar)
(global-set-key (kbd "C-x b")   'browse-url)
(global-set-key (kbd "C-x p")   'ping)
(global-set-key (kbd "C-x l")   'list-colors-display)

;;
;; Text manipulation
;;
(global-set-key "\C-g" 'goto-line)
(global-set-key "\C-a" 'mark-page)
(global-set-key "\M-s" 'untabify)
(global-set-key "\M-r" 'replace-all)
(global-set-key "\M-s" 'mark-curr-line)
(global-set-key "\M-k" 'kill-full-line)
(global-set-key "\C-s" 'isearch-forward)

;;
;; buffers manipulations
;;
(global-unset-key "\C-f")

(global-set-key "\C-k" 'kill-this-buffer)
(global-set-key "\M-d" 'delete-this-buffer-and-file)
(global-set-key "\C-f" 'file-name)

(global-set-key (kbd "M-<left>")  'beginning-of-line)
(global-set-key (kbd "M-<right>") 'end-of-line)
(global-set-key (kbd "M-<up>")  'beginning-of-buffer)
(global-set-key (kbd "M-<down>") 'end-of-buffer)
(global-set-key (kbd "C-c c") 'emacs-config)

;;
;; tabbar keybindings
;;
(global-set-key [C-left]  'tabbar-backward-tab)
(global-set-key [C-right] 'tabbar-forward-tab)
(global-set-key [C-tab]   'tabbar-forward-group)

;;
;; Undo/Redo
;;
(global-unset-key "\C-r")
(global-set-key "\C-z" 'undo)
(global-set-key "\C-r" 'redo)

;;
;; Emacs lisp
;;
(global-set-key (kbd "C-e") 'eval-defun)

;;
;; ui
;;
(global-set-key [M-f12] 'toggle-mode-line)

;;
;; Help
;;
(global-set-key "\M-h" 'helpers)
(global-set-key (kbd "C-h") 'discover-my-major)

;;
;; Window size manipulation
;;
(global-set-key (kbd "C-S-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-S-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "<C-down>") 'shrink-window)
(global-set-key (kbd "<C-up>") 'enlarge-window)

;;
;; package manager
;;
(global-unset-key "\C-p")
(global-set-key (kbd "C-p l") 'package-list-packages)
(global-set-key (kbd "C-p i") 'package-install)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Modes dependend key bindings ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;
;; dired
;;
(define-key dired-mode-map (kbd "<return>") 'dired-find-alternate-file)
(define-key dired-mode-map (kbd "C-<up>") (lambda () (interactive) (find-alternate-file "..")))

;; markdown
;;
(add-hook 'markdown-mode-hook (lambda () (local-set-key (kbd "C-p") #'markdown-preview)))
(add-hook 'markdown-mode-hook (lambda () (local-set-key (kbd "C-c l") #'markdown-insert-link)))
(add-hook 'markdown-mode-hook (lambda () (local-set-key (kbd "C-c p") #'markdown-insert-image)))
(add-hook 'markdown-mode-hook (lambda () (local-set-key (kbd "C-c b") #'markdown-insert-bold)))
(add-hook 'markdown-mode-hook (lambda () (local-set-key (kbd "C-c i") #'markdown-insert-italic)))
(add-hook 'markdown-mode-hook (lambda () (local-set-key (kbd "C-c q") #'markdown-insert-blockquote)))

;;
;; js
;;
(add-hook 'js2-mode-hook (lambda () (local-set-key (kbd "C-c h") #'js2-mode-hide-element)))
(add-hook 'js2-mode-hook (lambda () (local-set-key (kbd "C-c s") #'js2-mode-show-element)))
(add-hook 'js2-mode-hook (lambda () (local-set-key (kbd "RET") #'js2-line-break)))

;;
;; web mode
;;
(add-hook 'web-mode-hook (lambda () (local-set-key (kbd "RET") #'newline-and-indent)))
(add-hook 'web-mode-hook (lambda () (local-set-key (kbd "\C-c C-e") #'web-mode-dom-errors-show)))
(add-hook 'web-mode-hook (lambda () (local-set-key (kbd "\C-c C-c") 'web-mode-comment-or-uncomment)))
