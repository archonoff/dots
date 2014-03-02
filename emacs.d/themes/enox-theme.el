;;; enox-theme.el --- Nox's color theme

;;; Commentary:
;;  A medium-contrast theme with dark background.

;;; Code:
(deftheme enox
  "Enox theme (dark background).

Basic, Font Lock, Ido, Isearch, Helm, Gnus, Message, Ediff, Flycheck,
Speedbar Guide Key, Flyspell, Org, Semantic, Whitespace, and
Ansi-Color faces are included.")

(let ((class '((class color) (min-colors 89)))
      ;; Enox palette colors.
      (nox-fg "#e2e2e2")
      (nox-fg-subtle "#4f5b66")
      (nox-em "#ffffff")
      (nox-bg "#30363b")
      (nox-bg-subtle "#353c43")
      (nox-bg-em "#bdbdbd")
      (nox-bg-dark "#222222")
      (nox-bg-darkish "#24292d")
      (nox-selection "#456875")
      (nox-selection-2 "#7d3e62")
      (nox-highlight "#718967")
      (nox-special "#d6b8f5")
      (nox-string "#ffccd3")
      (nox-function "#e9d9b3")
      (nox-comment "#7c98aa")
      (nox-variable "#add7db")
      (nox-dir "#93c3d6")
      (nox-statement "#b1d631")
      (nox-keyword "#ffffff")
      (nox-red "#ff4466")
      (nox-green "#b1d631")
      (nox-cyan "#5bd0b5")
      (nox-blue "#93c3d6")
      (nox-purple "#8b64d3")
      (nox-yellow "#b7aa80"))

  (custom-theme-set-faces
   'enox
   `(default ((,class (:foreground ,nox-fg :background ,nox-bg))))
   `(cursor ((,class (:background ,nox-keyword))))
   `(fringe ((,class (:background ,nox-bg :foreground ,nox-fg-subtle))))
   `(vertical-border ((,class (:background ,nox-bg-subtle :foreground ,nox-fg-subtle))))
   ;; Highlighting faces
   `(highlight ((,class (:background ,nox-highlight))))
   `(region ((,class (:background ,nox-selection))))
   `(secondary-selection ((,class (:background ,nox-selection-2))))
   `(hl-line ((,class (:background ,nox-bg-subtle))))
   `(isearch ((,class (:foreground ,nox-em :background ,nox-purple))))
   `(lazy-highlight ((,class (:foreground ,nox-em :background ,nox-yellow))))
   `(trailing-whitespace ((,class (:background ,nox-red))))
   `(show-paren-match ((,class (:foreground ,nox-em :background ,nox-bg-subtle))))
   `(paren-face ((,class (:foreground ,nox-comment))))
   `(shadow ((,class (:foreground ,nox-fg-subtle))))
   ;; Mode line and header line faces
   `(header-line ((,class (:box nil :background ,nox-bg-dark :foreground ,nox-comment))))
   `(mode-line ((,class (:box nil :background ,nox-bg-dark :foreground ,nox-fg))))
   `(mode-line-inactive ((,class (:box nil :background ,nox-bg-darkish :foreground ,nox-comment))))
   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:weight bold :foreground ,nox-keyword))))
   `(escape-glyph ((,class (:foreground ,nox-function))))
   `(error ((,class (:background: ,nox-red :foreground ,nox-em))))
   `(warning ((,class (:foreground ,nox-yellow))))
   `(success ((,class (:foreground ,nox-green))))
   `(linum ((,class (:background ,nox-bg-subtle :foreground ,nox-fg-subtle :height 0.85))))
   `(popup-scroll-bar-foreground-face ((,class (:background ,nox-bg-subtle))))
   `(popup-scroll-bar-background-face ((,class (:background ,nox-bg-dark))))
   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,nox-special))))
   `(font-lock-comment-face ((,class (:slant italic :foreground ,nox-comment))))
   `(font-lock-comment-delimiter-face ((,class (:slant italic :foreground ,nox-fg-subtle))))
   `(font-lock-constant-face ((,class (:weight bold :foreground ,nox-variable))))
   `(font-lock-doc-face ((,class (:slant italic :foreground ,nox-string))))
   `(font-lock-function-name-face ((,class (:foreground ,nox-function))))
   `(font-lock-keyword-face ((,class (:weight bold :foreground ,nox-keyword))))
   `(font-lock-negation-char-face ((,class (:weight bold :foreground ,nox-string))))
   `(font-lock-preprocessor-face ((,class (:weight bold :foreground ,nox-comment))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,nox-special))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,nox-variable))))
   `(font-lock-string-face ((,class (:foreground ,nox-string))))
   `(font-lock-type-face ((,class (:foreground ,nox-statement))))
   `(font-lock-variable-name-face ((,class (:foreground ,nox-variable))))
   `(font-lock-warning-face ((,class (:foreground ,nox-yellow))))
   ;; Button and link faces
   `(link ((,class (:underline t :foreground ,nox-blue))))
   `(link-visited ((,class (:underline t :foreground ,nox-special))))
   ;; Custom
   `(custom-state ((,class (:foreground ,nox-function))))
   ;; YASnippet
   `(yas-field-highlight-face ((,class (:background ,nox-purple :foreground ,nox-em))))
   ;; Smartparens
   `(sp-pair-overlay-face ((,class (:background ,nox-selection-2))))
   ;; Dired
   `(dired-directory ((,class (:weight bold :foreground ,nox-dir))))
   `(dired-symlink ((,class (:weight normal :foreground ,nox-special))))
   ;; Magit
   `(magit-item-highlight ((,class (:background ,nox-bg-subtle))))
   `(magit-log-sha1 ((,class (:foreground ,nox-special))))
   `(diff-added ((,class (:background ,nox-green :foreground ,nox-bg-dark))))
   `(diff-removed ((,class (:background ,nox-red :foreground ,nox-em))))
   `(diff-context ((,class (:foreground ,nox-comment))))
   `(diff-hunk-header ((,class (:background ,nox-fg-subtle))))
   `(diff-file-header ((,class (:weight bold :background ,nox-fg-subtle :foreground ,nox-em))))
   ;; Ido faces
   `(ido-first-match ((,class (:weight bold :foreground ,nox-em))))
   `(ido-only-match ((,class (:weight bold :foreground ,nox-green))))
   `(ido-subdir ((,class (:weight bold :foreground ,nox-dir))))
   `(ido-indicator ((,class (:weight bold :foreground ,nox-dir))))
   `(ido-incomplete-regexp ((,class (:weight bold :foreground ,nox-string))))
   ;; Helm
   `(helm-action ((,class (:foreground ,nox-fg))))
   `(helm-selection ((,class (:weight bold :height 1.1 :foreground ,nox-em :background ,nox-bg-subtle))))
   `(helm-match ((,class (:underline t :foreground ,nox-em :background ,nox-bg))))
   `(helm-source-header ((,class (:weight bold :height 1.0 :foreground ,nox-statement :background ,nox-bg))))
   `(helm-header ((,class (:foreground ,nox-comment :background ,nox-bg))))
   `(helm-candidate-number ((,class (:foreground ,nox-fg :background ,nox-bg-subtle))))
   `(helm-separator ((,class (:foreground ,nox-fg :background ,nox-bg-subtle))))
   `(helm-ff-directory ((,class (:weight bold :foreground ,nox-dir :background ,nox-bg))))
   `(helm-ff-executable ((,class (:foreground ,nox-string))))
   `(helm-ff-file ((,class (:foreground ,nox-fg))))
   `(helm-ff-symlink ((,class (:foreground ,nox-special))))
   `(helm-ff-prefix ((,class (:weight bold :foreground ,nox-fg))))
   `(helm-ff-invalid-symlink ((,class (:foreground ,nox-em :background ,nox-red))))
   `(helm-ff-history-deleted ((,class (:foreground ,nox-em :background ,nox-red))))
   `(helm-buffer-not-saved ((,class (:foreground ,nox-string))))
   `(helm-buffer-size ((,class (:foreground ,nox-comment))))
   `(helm-buffer-process ((,class (:foreground ,nox-special))))
   `(helm-buffer-saved-out ((,class (:foreground ,nox-red))))
   `(helm-lisp-completion-info ((,class (:foreground ,nox-comment))))
   `(helm-lisp-show-completion ((,class (:foreground ,nox-fg))))
   ; TODO: this is super incomplete, e.g., bookmarks, grep
   ;; Speedbar
   `(speedbar-button-face ((,class (:foreground ,nox-comment))))
   `(speedbar-directory-face ((,class (:weight bold :foreground ,nox-dir))))
   `(speedbar-file-face ((,class (:foreground ,nox-fg))))
   `(speedbar-selected-face ((,class (:underline nil :weight bold :foreground ,nox-em))))
   `(speedbar-separator-face ((,class (:foreground ,nox-comment :background ,nox-bg-subtle))))
   `(speedbar-tag-face ((,class (:foreground ,nox-yellow))))
   ;; Whitespace mode
   `(whitespace-tab ((,class (:foreground ,nox-fg-subtle :background ,nox-bg))))
   `(whitespace-space ((,class (:foreground ,nox-fg-subtle :background ,nox-bg))))
   `(whitespace-line ((,class (:foreground ,nox-special :background ,nox-bg-subtle))))
   `(whitespace-newline ((,class (:foreground ,nox-fg-subtle))))
   `(whitespace-space-after-tab ((,class (:foreground ,nox-em :background ,nox-red))))
   `(whitespace-space-before-tab ((,class (:foreground ,nox-em :background ,nox-red))))
   `(whitespace-trailing ((,class (:foreground ,nox-em :background ,nox-red))))
   `(whitespace-indentation ((,class (:foreground ,nox-em :background ,nox-yellow))))
   `(whitespace-empty ((,class (:foreground ,nox-em :background ,nox-red))))
   ;; Term colors
   `(term-color-yellow ((,class (:foreground ,nox-yellow :background ,nox-yellow))))
   `(term-color-green ((,class (:foreground ,nox-green :background ,nox-green))))
   `(term-color-blue ((,class (:foreground ,nox-blue :background ,nox-blue))))
   `(term-color-cyan ((,class (:foreground ,nox-cyan :background ,nox-cyan))))
   `(term-color-red ((,class (:foreground ,nox-string :background ,nox-red))))
   `(term-color-white ((,class (:foreground ,nox-em :background ,nox-fg))))
   `(term-color-black ((,class (:foreground ,nox-bg-dark :background ,nox-bg-dark))))
   `(term-color-magenta ((,class (:foreground ,nox-special :background ,nox-purple))))
   `(term-default-bg-color ((,class (:background ,nox-bg))))
   `(term-default-fg-color ((,class (:foreground ,nox-fg))))
   ;; Guide Key
   `(guide-key/key-face ((,class (:foreground ,nox-fg-subtle))))
   `(guide-key/highlight-command-face ((,class (:weight bold :foreground ,nox-em))))
   `(guide-key/prefix-command-face ((,class (:weight bold :foreground ,nox-green))))
   ;; Erc
   `(erc-action-face ((,class (:weight bold :foreground ,nox-yellow))))
   `(erc-current-nick-face ((,class (:weight bold :foreground ,nox-green))))
   `(erc-dangerous-host-face ((,class (:weight bold :foreground ,nox-red))))
   `(erc-direct-msg-face ((,class (:weight bold :foreground ,nox-string))))
   `(erc-error-face ((,class (:foreground ,nox-em :background ,nox-red))))
   `(erc-nick-default-face ((,class (:weight bold :foreground ,nox-em))))
   `(erc-notice-face ((,class (:weight normal :slant italic :foreground ,nox-comment))))
   `(erc-prompt-face ((,class (:weight bold :foreground ,nox-bg-dark :background ,nox-bg-em))))
   `(erc-timestamp-face ((,class (:weight bold :foreground ,nox-special))))
   `(erc-input-face ((,class (:foreground ,nox-blue))))
   ;; Auto-complete
   `(ac-completion-face ((,class (:underline t :foreground ,nox-comment))))
   `(ac-candidate-face ((,class (:background ,nox-bg-dark :foreground ,nox-fg))))
   `(ac-selection-face ((,class (:background ,nox-selection :foreground ,nox-em))))
   `(ac-yasnippet-candidate-face ((,class (:background ,nox-yellow :foreground ,nox-bg-dark))))
   `(ac-yasnippet-selection-face ((,class (:background ,nox-function :foreground ,nox-bg-dark))))
   ;; Gnus faces
   `(gnus-group-news-1 ((,class (:weight bold :foreground ,nox-string))))
   `(gnus-group-news-1-low ((,class (:foreground ,nox-string))))
   `(gnus-group-news-2 ((,class (:weight bold :foreground ,nox-keyword))))
   `(gnus-group-news-2-low ((,class (:foreground ,nox-keyword))))
   `(gnus-group-news-3 ((,class (:weight bold :foreground ,nox-function))))
   `(gnus-group-news-3-low ((,class (:foreground ,nox-function))))
   `(gnus-group-news-4 ((,class (:weight bold :foreground ,nox-blue))))
   `(gnus-group-news-4-low ((,class (:foreground ,nox-blue))))
   `(gnus-group-news-5 ((,class (:weight bold :foreground ,nox-yellow))))
   `(gnus-group-news-5-low ((,class (:foreground ,nox-yellow))))
   `(gnus-group-news-low ((,class (:foreground ,nox-bg-em))))
   `(gnus-group-mail-1 ((,class (:weight bold :foreground ,nox-string))))
   `(gnus-group-mail-1-low ((,class (:foreground ,nox-string))))
   `(gnus-group-mail-2 ((,class (:weight bold :foreground ,nox-keyword))))
   `(gnus-group-mail-2-low ((,class (:foreground ,nox-keyword))))
   `(gnus-group-mail-3 ((,class (:weight bold :foreground ,nox-yellow))))
   `(gnus-group-mail-3-low ((,class (:foreground ,nox-yellow))))
   `(gnus-group-mail-low ((,class (:foreground ,nox-bg-em))))
   `(gnus-header-content ((,class (:foreground ,nox-comment))))
   `(gnus-header-from ((,class (:weight bold :foreground ,nox-dir))))
   `(gnus-header-subject ((,class (:foreground ,nox-function))))
   `(gnus-header-name ((,class (:foreground ,nox-keyword))))
   `(gnus-header-newsgroups ((,class (:foreground ,nox-bg-em))))
   ;; Message faces
   `(message-header-name ((,class (:foreground ,nox-keyword))))
   `(message-header-cc ((,class (:foreground ,nox-dir))))
   `(message-header-other ((,class (:foreground ,nox-comment))))
   `(message-header-subject ((,class (:foreground ,nox-function))))
   `(message-header-to ((,class (:weight bold :foreground ,nox-dir))))
   `(message-cited-text ((,class (:slant italic :foreground ,nox-comment))))
   `(message-separator ((,class (:weight bold :foreground ,nox-em))))
   ;; SMerge
   `(smerge-refined-change ((,class (:background ,nox-special))))
   ;; Ediff
   `(ediff-current-diff-A ((,class (:background ,nox-green))))
   `(ediff-fine-diff-A ((,class (:weight bold :background ,nox-green))))
   `(ediff-current-diff-B ((,class (:background ,nox-yellow))))
   `(ediff-fine-diff-B ((,class (:weight bold :background ,nox-yellow))))
   `(ediff-current-diff-C ((,class (:background ,nox-blue))))
   `(ediff-fine-diff-C ((,class (:weight bold :background ,nox-blue))))
   ;; Flycheck
   `(flycheck-warning ((,class (:underline (:style wave :color ,nox-yellow)))))
   `(flycheck-fringe-warning ((,class (:background ,nox-yellow :foreground ,nox-bg-dark))))
   `(flycheck-error ((,class (:underline (:style wave :color ,nox-string)))))
   `(flycheck-fringe-error ((,class (:background ,nox-red :foreground ,nox-em))))
   ;; Flyspell
   ;; TODO: I just want an underline. Why is that so hard?
   `(flyspell-duplicate ((,class (:foreground unspecified :underline (:style wave :color ,nox-yellow)))))
   `(flyspell-incorrect ((,class (:foreground unspecified :underline (:style wave :color ,nox-string)))))
   ;; Ace-jump-mode
   `(ace-jump-face-foreground ((,class (:foreground ,nox-green))))
   `(ace-jump-face-background ((,class (:foreground ,nox-comment))))
   ;; Smart Mode Line
   `(sml/charging ((,class (:foreground ,nox-green))))
   `(sml/client ((,class (:foreground ,nox-special))))
   `(sml/col-number ((,class (:foreground ,nox-fg))))
   `(sml/discharging ((,class (:foreground ,nox-string))))
   `(sml/filename ((,class (:weight bold :foreground ,nox-em))))
   `(sml/folder ((,class (:foreground ,nox-comment))))
   `(sml/git ((,class (:weight bold :foreground ,nox-blue))))
   `(sml/global ((,class (:foreground ,nox-comment))))
   `(sml/line-number ((,class (:foreground ,nox-yellow))))
   `(sml/modes ((,class (:foreground ,nox-em))))
   `(sml/modified ((,class (:foreground ,nox-string))))
   `(sml/mule-info ((,class (:foreground ,nox-special))))
   `(sml/not-modified ((,class (:foreground ,nox-comment))))
   `(sml/numbers-separator ((,class (:foreground ,nox-comment))))
   `(sml/outside-modified ((,class (:background ,nox-red :foreground ,nox-em))))
   `(sml/position-percentage ((,class (:foreground ,nox-yellow))))
   `(sml/prefix ((,class (:weight bold :foreground ,nox-green))))
   `(sml/process ((,class (:weight bold :foreground ,nox-green))))
   `(sml/read-only ((,class (:foreground ,nox-blue))))
   `(sml/sudo ((,class (:background ,nox-red :foreground ,nox-em))))
   `(sml/time ((,class (:foreground ,nox-fg))))
   `(sml/vc ((,class (:foreground ,nox-blue))))
   `(sml/vc-edited ((,class (:foreground ,nox-string))))
   `(sml/warning ((,class (:weight bold :foreground ,nox-string))))
   ;; My custom mode line stuff
   `(mode-line-read-only-face ((,class (:foreground ,nox-blue))))
   `(mode-line-modified-face ((,class (:foreground ,nox-red))))
   `(mode-line-directory-face ((,class (:foreground ,nox-dir))))
   `(mode-line-filename-face ((,class (:weight bold :foreground ,nox-em))))
   `(mode-line-position-face ((,class (:foreground ,nox-fg))))
   `(mode-line-mode-face ((,class (:foreground ,nox-em))))
   `(mode-line-minor-mode-face ((,class (:foreground ,nox-fg-subtle))))
   `(mode-line-process-face ((,class (:foreground ,nox-green))))
   ;; Org-mode
   `(org-agenda-column-dateline ((,class (:weight bold :foreground ,nox-em))))
   `(org-agenda-date ((,class (:weight bold :foreground ,nox-comment :background unspecified :box nil))))
   `(org-agenda-date-today ((,class (:weight bold :foreground ,nox-em :background ,nox-bg-subtle))))
   `(org-agenda-date-weekend ((,class (:weight bold :foreground ,nox-comment :underline ,nox-comment))))
   `(org-agenda-diary ((,class (:foreground ,nox-comment))))
   `(org-agenda-done ((,class (:slant normal :foreground ,nox-green :strike-through t))))
   `(org-agenda-structure ((,class (:weight bold :foreground ,nox-statement))))
   `(org-time-grid ((,class (:foreground ,nox-fg-subtle))))
   `(org-document-info ((,class (:foreground ,nox-comment))))
   `(org-document-info-keyword ((,class (:weight bold :foreground ,nox-fg))))
   `(org-document-title ((,class (:weight bold :foreground ,nox-statement))))
   `(org-special-keyword ((,class (:weight bold :foreground ,nox-comment))))
   `(org-tag ((,class (:slant italic :weight normal :foreground ,nox-comment))))
   `(org-code ((,class (:foreground ,nox-yellow))))
   `(org-verbatim ((,class (:foreground ,nox-special))))
   `(org-warning ((,class (:slant italic :weight bold :foreground ,nox-string))))
   `(org-scheduled ((,class (:weight normal :foreground ,nox-variable))))
   `(org-scheduled-today ((,class (:weight normal :foreground ,nox-function))))
   `(org-scheduled-previously ((,class (:slant italic :weight normal :foreground ,nox-string))))
   `(org-upcoming-deadline ((,class (:weight normal :foreground ,nox-em))))
   `(org-meta-line ((,class (:foreground ,nox-fg-subtle))))
   `(org-ellipsis ((,class (:foreground ,nox-fg-subtle))))
   `(org-todo ((,class (:weight bold :foreground ,nox-red))))
   `(org-done ((,class (:weight bold :foreground ,nox-green))))
   `(org-priority ((,class (:weight normal :foreground ,nox-comment))))
   `(org-table ((,class (:foreground ,nox-fg :background ,nox-bg-subtle))))
   `(org-checkbox ((,class (:foreground ,nox-comment :background ,nox-bg-subtle :box
                    (:line-width -1 :style released-button)))))
   `(org-date ((,class (:underline ,nox-special :foreground ,nox-special))))
   `(org-link ((,class (:underline ,nox-dir :foreground ,nox-dir))))
   `(org-level-1 ((,class (:height 200 :weight bold :foreground ,nox-em))))
   `(org-level-2 ((,class (:weight bold :foreground ,nox-variable))))
   `(org-level-3 ((,class (:weight bold :foreground ,nox-fg))))
   `(org-level-4 ((,class (:weight bold :foreground ,nox-comment))))
   `(org-level-5 ((,class (:weight bold :foreground ,nox-function))))
   `(org-level-6 ((,class (:weight bold :foreground ,nox-yellow))))
   `(org-level-7 ((,class (:weight bold :foreground ,nox-em))))
   `(org-level-8 ((,class (:weight bold :foreground ,nox-em))))
   `(org-habit-overdue-face ((,class (:background ,nox-red :foreground ,nox-em))))
   `(org-habit-overdue-future-face ((,class (:background ,nox-bg-subtle))))
   `(org-habit-alert-face ((,class (:background ,nox-yellow :foreground ,nox-bg-dark))))
   `(org-habit-alert-future-face ((,class (:background ,nox-string))))
   `(org-habit-clear-face ((,class (:background ,nox-bg-subtle :foreground ,nox-green))))
   `(org-habit-clear-future-face ((,class (:background ,nox-bg-subtle))))
   `(org-habit-ready-face ((,class (:background ,nox-green :foreground ,nox-bg-dark))))
   ;; Rainbow Delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:inherit paren-face))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,nox-special))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,nox-yellow))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,nox-blue))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,nox-string))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,nox-cyan))))
   `(rainbow-delimiters-unmatched-face ((,class (:background ,nox-red :foreground ,nox-em))))
   ;; Semantic faces
   `(semantic-decoration-on-includes ((,class (:underline  ,nox-statement))))
   `(semantic-decoration-on-private-members-face
     ((,class (:background ,nox-bg-subtle))))
   `(semantic-decoration-on-protected-members-face
     ((,class (:background ,nox-bg-subtle))))
   `(semantic-decoration-on-unknown-includes
     ((,class (:background ,nox-red))))
   `(semantic-decoration-on-unparsed-includes
     ((,class (:underline  ,nox-comment))))
   `(semantic-tag-boundary-face ((,class (:overline   ,nox-yellow))))
   `(semantic-unmatched-syntax-face ((,class (:underline  ,nox-red))))))

;; Set ansi-term colors
(setq ansi-term-color-vector
      [term term-color-black term-color-red term-color-green term-color-yellow
        term-color-blue term-color-magenta term-color-cyan term-color-white])

;(setq ansi-color-map (ansi-color-make-color-map))

;; For use with package.el
;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'enox)
;;; enox-theme.el ends here
