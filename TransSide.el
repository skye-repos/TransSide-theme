;;; TransSide-theme.el --- High contrast theme based off of the trans flag colors -*- lexical-binding: t -*-
;
;; URL: https://github.com/skye-repos/TransSide-theme
;; Version: 0.9.0
;; Package-Requires: ((autothemer "0.2.14") (emacs "24.1"))
;;
;;; License:
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; SEE README

;;; Code:
(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(defmacro TransSide-deftheme (name description palette &rest body)
  `(autothemer-deftheme
    ,name
    ,description
    ,palette
    (;; Default faces. Most commonly seen, used and inherited.
	 (default (:foreground fg-text :background bg-main))
     
	 (font-lock-builtin-face (:foreground builtin))
	 (font-lock-comment-face (:foreground comment))
	 (font-lock-doc-face (:foreground docstr))
	 (font-lock-keyword-face (:foreground purple-alt :bold t))
	 (font-lock-warning-face (:foreground warning))
     
	 (font-lock-string-face (:foreground pink))
	 (font-lock-type-face (:foreground purple-alt))
     (font-lock-function-name-face (:foreground blue))
	 (font-lock-variable-name-face (:foreground blue-alt))
	 (font-lock-constant-face (:foreground blue-alt))
	 
     
	 ;;Other basic things
	 (scroll-bar nil)
	 (border nil)
	 (fringe (:background bg-main))
     
	 (cursor (:background pink-alt :foreground gray-alt-dark))
	 (highlight (:weight 'bold :foreground pink-alt :background highlight))
	 (region (:weight 'bold :foreground pink-alt :background highlight))
     
	 (link (:foreground pastel-pink :underline t))
     
	 ;;more basic things!!
	 (bold (:weight 'bold :foreground standout))
	 (warning (:weight 'bold :foreground warning))
	 
	 ;;line number mode
	 (linum (:inherit '(shadow default)))
	 (linum-relative-current-face (:weight 'bold :foreground blue :background bg-main :inherit 'linum))
	 (line-number (:inherit ('shadow 'default)))
	 (line-number-current-line (:inherit 'linum-relative-current-face))
     
	 ;;iSearch
	 (isearch (:weight 'bold :inherit 'highlight))
	 (isearch-fail (:background bg-main :foreground warning))
     
	 ;;Minibuffer prompt
	 (minibuffer-prompt (:weight 'bold :foreground blue))
     
	 ;;Outlines/Headings
	 (outline-1 (:foreground level1))
	 (outline-2 (:foreground level2))
	 (outline-3 (:foreground level3))
	 (outline-4 (:foreground level4))
	 (outline-5 (:foreground level5))
	 (outline-6 (:foreground level6))
	 (outline-7 (:foreground level7))
	 (outline-8 (:foreground level8))

	 ;;Org-mode stuff
	 (org-todo (:weight 'bold :box nil :foreground purple-alt))
	 (org-done (:weight 'bold :box nil :foreground purple))

     (org-tag (:weight 'bold :foreground fg-white :background bg-black))
     
	 (org-headline-todo (:foreground pink-alt))
	 (org-headline-done (:foreground blue-alt))
     
	 (org-priority (:inherit 'font-lock-keyword-face))
     
	 (org-date (:underline nil :foreground pastel-blue))
	 (org-date-selected (:inverse-video t :foreground pink-alt))
	 
	 (org-level-1 (:inherit 'outline-1 :weight 'bold :height 1.3))
	 (org-level-2 (:inherit 'outline-2 :weight 'normal :height 1.1))
	 (org-level-3 (:inherit 'outline-3 :weight 'normal))
	 (org-level-4 (:inherit 'outline-4 :weight 'normal))
	 (org-level-5 (:inherit 'outline-5 :weight 'normal))
	 (org-level-6 (:inherit 'outline-6 :weight 'normal))
	 (org-level-7 (:inherit 'outline-7 :weight 'normal))
	 (org-level-8 (:inherit 'outline-8 :weight 'normal))
     
	 (org-block (:background org-src-blk))
	 (org-block-begin-line (:inherit 'font-lock-comment-face :background bg-black :box (:color pastel-violet)))
	 (org-block-end-line (:inherit 'org-block-begin-line))
     
	 (org-quote (:slant 'italic :inherit 'org-block))
	 (org-verse (:slant 'italic :inherit 'org-block))
     
	 (org-special-keyword (:inherit 'font-lock-keyword-face))
     
	 (org-footnote (:inherit 'link))
     
	 (org-checkbox (:inherit 'bold :foreground pastel-pink))
	 (org-checkbox-statistics-todo (:inherit 'org-todo))
	 (org-checkbox-statistics-done (:inherit 'org-done))
     
	 (org-document-title (:height 1.5 :weight 'bold :slant 'italic :foreground blue-alt))
	 (org-document-info (:height 1.5 :foreground blue-alt))
	 (org-document-info-keyword (:height 1.5 :inherit 'font-lock-keyword-face))
     
	 (org-scheduled-previously (:foreground blue-alt-dimmed))
     
	 (org-latex-and-related (:foreground standout))
	 
	 (org-agenda-current-time (:foreground standout :background bg-main))
	 (org-agenda-dimmed-todo-face (:foreground purple-alt-dimmed))
	 (org-agenda-structure (:weight 'bold :box (:color pastel-violet) :inherit 'font-lock-constant-face))
	 (org-agenda-date (:height 1.1 :foreground blue-alt-dimmed))
	 (org-agenda-date-today (:height 1.4 :weight 'bold :foreground blue-alt))
	 (org-agenda-date-weekend (:weight 'normal :foreground purple))
	 (org-agenda-done (:height 1.1 :inherit 'org-done))
     
	 (org-scheduled (:foreground pink-alt))
	 (org-scheduled-today (:foreground pastel-pink))
     
	 (org-time-grid (:foreground purple-alt-dimmed))
     
	 (org-ellipsis (:foreground purple))

     ;;Org-modern
     (org-modern-tag (:foreground fg-white :background bg-black))
     (org-modern-todo (:weight 'bold :box nil :background purple-alt :foreground bg-main))
     (org-modern-done (:weight 'bold :box nil :background pastel-aqua :foreground bg-main))
     (org-modern-date-inactive (:background pastel-blue :foreground bg-black))
     (org-modern-date-active (:background blue :foreground gray-alt-dark))
     (org-modern-time-inactive (:background blue-alt :foreground bg-black))
     (org-modern-time-active (:background blue-alt-dimmed :foreground gray-alt-dark))     

	 ;;font-latex
	 (font-latex-math-face (:inherit 'bold :foreground pink-alt))
	 (font-latex-sectioning-5-face (:weight 'bold :foreground blue-alt :inherit 'variable-pitch))
	 (font-latex-sectioning-4-face (:height 1.1 :inherit 'font-latex-sectioning-5-face))
	 (font-latex-sectioning-3-face (:height 1.1 :inherit 'font-latex-sectioning-4-face))
	 (font-latex-sectioning-2-face (:height 1.1 :inherit 'font-latex-sectioning-3-face))
	 (font-latex-sectioning-1-face (:height 1.1 :inherit 'font-latex-sectioning-2-face))
	 (font-latex-sectioning-0-face (:height 1.1 :inherit 'font-latex-sectioning-1-face))
	 (font-latex-bold-face (:inherit 'bold))
	 (font-latex-italic-face (:inherit 'italic))
	 (font-latex-underline-face (:inherit 'underline))
	 (font-latex-string-face (:inherit 'font-lock-string-face))
	 (font-latex-warning-face (:foreground warning :inherit 'bold))
	 (font-latex-verbatim-face (:foreground pastel-lilac))
	 (font-latex-slide-title-face (:height 1.2 :weight 'bold :inherit 'variable-pitch :foreground purple-alt))
	 (font-latex-doctex-documentation-face (:foreground docstr))
     
     
	 ;;Rainbow delimiters
	 (rainbow-delimiters-depth-1-face (:foreground fg-white :inherit 'rainbow-delimiters-base-face))
	 (rainbow-delimiters-depth-2-face (:foreground level1 :inherit 'rainbow-delimiters-base-face))
	 (rainbow-delimiters-depth-3-face (:foreground level2 :inherit 'rainbow-delimiters-base-face))
	 (rainbow-delimiters-depth-4-face (:foreground level3 :inherit 'rainbow-delimiters-base-face))
	 (rainbow-delimiters-depth-5-face (:foreground level4 :inherit 'rainbow-delimiters-base-face))
	 (rainbow-delimiters-depth-6-face (:foreground level5 :inherit 'rainbow-delimiters-base-face))
	 (rainbow-delimiters-depth-7-face (:foreground level6 :inherit 'rainbow-delimiters-base-face))
	 (rainbow-delimiters-depth-8-face (:foreground level7 :inherit 'rainbow-delimiters-base-face))
	 (rainbow-delimiters-depth-9-face (:foreground level8 :inherit 'rainbow-delimiters-base-face))
	 (rainbow-delimiters-mismatched-face (:inherit 'rainbow-delimiters-unmatched-face))
	 (rainbow-delimiters-unmatched-face (:foreground warning))
	 (rainbow-delimiters-base-error-face (:foreground bg-black :inherit 'rainbow-delimiters-base-face))
	 (rainbow-delimiters-base-face (:weight 'bold))
          
	 ;;Mode-line
	 (mode-line (:foreground fg-white :background purple))
     (mode-line-active (:inherit 'mode-line))
	 (mode-line-inactive (:foreground gray-dark :background purple-dimmed))
     (mode-line-highlight (:box (:line-width 2 :color comment :style 'released-button)))
     (mode-line-buffer-id (:weight 'bold))
     (mode-line-emphasis (:weight 'bold))
     
     )
    ,@body))

(provide 'TransSide)
