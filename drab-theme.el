(deftheme drab "Ugly drab theme with subdued colors; easy on the eyes.")

(let (
      (bg         "Seashell3")
      (fg         "Black")
      (mark       "#e7dfd9")
      (blue       "DodgerBlue4")
      (blue-light "SkyBlue4")
      (cyan       "CadetBlue4")
      (gray-dark  "#4e4640")
      (gray-light "#a79f99")
      (gray-med   "#675f59")
      (green      "DarkGreen")
      (orange     "Orange4")
      (purple     "Orchid4")
      (red        "IndianRed4")
      )

  (custom-theme-set-faces
   'drab

   ;; Defaults
   `(cursor ((t (:background ,fg))))
   `(default ((t (:foreground ,fg :background ,bg))))
   `(error ((t (:foreground ,red))))
   `(escape-glyph ((t (:foreground ,cyan))))
   `(homoglyph ((t (:foreground ,cyan))))
   `(highlight ((t (:background ,gray-light))))
   `(region ((t (:background ,mark))))
   `(shadow ((t (:foreground ,gray-med))))
   `(show-paren-match ((t (:inherit lazy-highlight))))
   `(success ((t (:foreground ,green))))
   `(warning ((t (:foreground ,orange))))

   ;; UI chrome
   `(fringe ((t (:foreground ,gray-med :background nil))))
   `(tooltip ((t (:inherit variable-pitch :background ,gray-light :foreground ,fg))))
   `(vertical-border ((t (:foreground ,gray-light))))

   ;; Minibuffer
   `(minibuffer-prompt ((t (:foreground ,green :weight bold))))

   ;; Mode line
   `(mode-line ((t (:inverse-video nil :background ,gray-light :foreground ,fg))))
   `(mode-line-inactive ((t (:background ,bg :foreground ,gray-light))))
   `(header-line ((t (:inherit 'mode-line))))
   `(compilation-mode-line-fail ((t (:foreground ,red))))
   `(compilation-mode-line-run  ((t (:foreground ,green))))
   `(compilation-mode-line-exit ((t (:weight bold))))

   ;; Font lock faces
   `(font-lock-builtin-face ((t (:foreground ,blue))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,gray-med :slant normal))))
   `(font-lock-comment-face ((t (:foreground ,gray-med :slant italic))))
   `(font-lock-constant-face ((t (:foreground ,green))))
   `(font-lock-doc-delimiter-face ((t (:foreground ,gray-dark :slant normal))))
   `(font-lock-doc-face ((t (:foreground ,gray-dark :slant italic))))
   `(font-lock-function-name-face ((t (:foreground ,cyan))))
   `(font-lock-keyword-face ((t (:foreground ,red))))
   `(font-lock-negation-char-face ((t (:foreground ,blue))))
   `(font-lock-preprocessor-face ((t (:foreground ,green))))
   `(font-lock-string-face ((t (:foreground ,orange))))
   `(font-lock-type-face ((t (:foreground ,green))))
   `(font-lock-variable-name-face ((t (:foreground ,blue))))
   `(font-lock-warning-face ((t (:foreground ,red))))

   ;; Button and link faces
   `(custom-button ((t (:background ,gray-light, :foreground ,fg))))
   `(link ((t (:underline t :foreground ,blue-light))))
   `(link-visited ((t (:underline t :foreground ,purple))))

   ;; Searching
   `(isearch ((t (:background "LightGoldenrod1" :foreground "DarkOrange4"))))
   `(isearch-fail ((t (:background ,red :foreground,bg))))
   `(lazy-highlight ((t (:background ,mark :foreground ,fg))))
   `(match ((t (:inherit lazy-highlight))))
   `(query-replace ((t (:inherit isearch))))
   `(secondary-selection ((t (:inherit lazy-highlight))))

   ;; -- MODES -----------------------------------------------------------------

   ;; Dired
   `(dired-directory ((t (:foreground ,blue))))

   ;; IDO
   `(ido-only-match ((t (:inherit ido-match))))
   `(ido-subdir ((t (:inherit font-lock-comment-face))))

   ;; Magit
   `(magit-diff-context-highlight ((t (:foreground ,gray-med :background ,mark))))
   `(magit-section-highlight ((t (:background ,mark))))

   ;; Markdown
   `(markdown-header-face ((t (:foreground ,blue :weight bold :background nil))))
   `(markdown-inline-code-face ((t (:inherit ,font-lock-string-face))))
   `(markdown-pre-face ((t (:foreground ,gray-dark))))
   `(markdown-markup-face ((t (:inherit shadow :weight bold))))

   ;; Org mode
   `(org-date ((t (:foreground ,green))))
   `(org-done ((t (:foreground ,gray-dark :weight bold))))
   `(org-level-1 ((t (:foreground ,blue :weight bold :underline t))))
   `(org-level-2 ((t (:foreground ,blue-light))))
   `(org-level-3 ((t (:foreground ,orange))))
   `(org-todo ((t (:foreground ,purple :weight bold))))

   ;; reStructuredText
   `(rst-adornment ((t (:inherit shadow :weight bold))))
   `(rst-directive ((t (:inherit font-lock-constant-face))))
   `(rst-external ((t (:inherit link))))
   `(rst-literal ((t (:inherit font-lock-string-face))))
   `(rst-level-1 ((t (:weight bold :background nil :foreground ,blue))))
   `(rst-level-2 ((t (:inherit rst-level-1))))
   `(rst-level-3 ((t (:weight bold :background nil :foreground ,fg))))
   `(rst-level-4 ((t (:inherit rst-level-3))))
   `(rst-level-5 ((t (:inherit rst-level-3))))
   `(rst-reference ((t (:inherit link))))

   ;; Treemacs
   `(treemacs-directory-face ((t (:foreground ,blue))))
   `(treemacs-file-face ((t (:inherit default))))
   `(treemacs-git-ignored-face ((t (:inherit font-lock-comment-face))))
   `(treemacs-git-modified-face ((t (:foreground ,purple))))
   `(treemacs-root-face ((t (:foreground ,green :underline t :weight bold))))
   `(treemacs-term-node-face ((t (:foreground ,gray-med))))

   ;; Whitespace
   `(whitespace-line ((t (:foreground ,red))))
   `(whitespace-tab ((t (:background ,gray-light :foreground ,gray-med))))
   `(whitespace-trailing ((t (:background ,red))))

   )
  )

(provide-theme 'drab)
