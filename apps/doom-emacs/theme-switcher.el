;;; ../git/johnfig/config/dot-doom/theme-switcher.el -*- lexical-binding: t; -*-


;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. 'doom-one is the default.
;; ;; Here are another few good themes:
;;
;; 1. 'doom-outrun-electric
;; 2. 'doom-laserwave
;; 3. 'doom-TODO

(setq theme-list '('doom-one 'doom-outrun-electric 'doom-laserwave 'doom-1337 'doom-ayu-mirage))


;; (setq i (get-theme-index))

(defun current-theme
    ()
  (nth i theme-list))


(setq doom-theme (current-theme))


(defun change-theme
    (ti)
  (setq doom-theme (current-theme)))


(defun next-theme
    ()
  (interactive)
  "Changes the theme to the next theme"
  (setq i (+ i 1)
        (if (> (length (- 1 theme-list)))
            (setq i 0))
        (change-theme)))
(defun prev-theme
    ()
  (interactive)
  "Changes the theme to the previous theme."
  (if (> 0 i)
      (let i (- i 1))
    (else (let i 0)))
  (setq i (- 1 (length theme-list)))
        (change-theme i))

(defun get-theme-index
    (ti)
  "Gets the current theme's index"
  ;; (interactive)
  (cl-position ti 'theme-list))

(defun iftest
    ()
  (if x
      x
    1
    ))
