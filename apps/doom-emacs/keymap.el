;;; ../git/johnfig/config/dot-doom/keymap.el -*- lexical-binding: t; -*-


(doom--define-leader-key "d t")    

;; d - Directory Map
(map! :leader
      (:prefix-map ("d" . "Directory")
       (:prefix ("t" . "Treemacs")
       :desc "Add Project" "a" #'treemacs-add-project-to-workspace
       :desc "Remove Project" "d" #'treemacs-remove-project-from-workspace;;persp-rename
       :desc "Rename Project" "r" #'persp-rename
       :desc "Follow" "f" #'treemacs-follow-mode
       :desc "Open" "o" #'treemacs
       )
       :desc "Dired" "d" #'dired
       ))

;; k - My Custom, no theme shortcuts
;;
(map! :leader
       (:prefix ("k" . "KhobJai's Keys")
       :desc "Treemacs" "t" #'treemacs
       :desc "Neotree" "n" #'neotree
       :desc "Vterm" "v" #'vterm
       :desc "Golden Ratio" "g" #'golden-ratio
       :desc "Reload Doom" "r" #'doom/reload
       :desc "Sync Doom" "s" (lambda () (interactive) (shell-command "doom sync")
       )))
;; Single suffix window managment keys
(map! :leader  :desc "Split Horizontally Tmux" "\"" #'evil-window-split)
(map! :leader :desc "Split Vertically Tmux" "%" #'evil-window-vsplit)
(map! :leader :desc "Goto left window" "<left>" #'evil-window-left)
(map! :leader  :desc "Goto right window" "<right>" #'evil-window-right)
(map! :leader :desc "Goto up window" "<up>" #'evil-window-up)
(map! :leader :desc "Goto down window" "<down>" #'evil-window-down)

;
;; Single Leader Keys
(map! :leader :desc "Open Vterm" "v" #'vterm)


;; Non Leader Keys
(map! :desc  "Escape key alternative"
      :i "H-e" #'evil-force-normal-state)
