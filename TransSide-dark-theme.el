;;; TransSide-dark-theme.el --- High contrast theme based off of the trans flag colors -*- lexical-binding: t -*-
;;
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

(require 'TransSide)

(TransSide-deftheme TransSide-dark "Custom theme inspired by the colors of the Trans Flag."
 
		     ;; Specify the color classes used by the theme
		     ((((class color) (min-colors #xFFFFFF))
		       ((class color) (min-colors #xFF)))
		      
		      ;; Specify the color palette for each of the classes above.
		      ;;basic bg/fg colors
		      (bg-main "#00000f" "#000")
		      (bg-black "#0f0f2f" "#112")
		      (fg-white "#FFFFFF" "#FFF")
		      (fg-text "#ffe1ff" "#FeF")

		      ;;Pinks & Blues
		      (pink "#e86fba" "#e6b")
		      (blue "#11acFF" "#1aF")

		      (pink-alt "#ff81b8" "#F8B")
		      (blue-alt "#53b9ff" "#5bF")

		      (pink-alt-dimmed "#df6f9f" "#D69")
		      (blue-alt-dimmed "#73a9dd" "#7ad")

		      ;;Purples & Violets
		      (purple "#6E58BB" "#65b")
		      (purple-alt "#b693ff" "#b9f")

		      (purple-dimmed "#341c62" "#316")
		      (purple-alt-dimmed "#493b80" "#438")

		      ;;Alternate Palate
		      (pastel-blue "#AEC6FF" "#ACF")
		      (pastel-aqua "#92ddea" "#9DE")
		      (pastel-pink "#eea5d8" "#EAD")
		      (pastel-lilac "#be9ddf" "#B9D")
		      (pastel-violet "#9579d1" "#97d")


		      ;;Alt grays and dark's
		      (gray "#f8f8f8" "#FFF")
		      (gray-dark "#d0d0d0" "#DDD")
		      (gray-alt "#3a3a3a" "#333")
		      (gray-alt-dark "#141414" "#111")

		      (level1 "#cc99ff" "#c9f")
		      (level2 "#7799ff" "#79f")
		      (level3 "#bb88ff" "#b8f")
		      (level4 "#8899ff" "#89f")
		      (level5 "#bb77ff" "#b7f")
		      (level6 "#9999ff" "#99f")
		      (level7 "#bb66ff" "#b6f")
		      (level8 "#aa99ff" "#a9f")

 		      (standout "#00FF94" "#0F9")
				      
		      ;;Warning, comment, and other miscellanious colors
		      (builtin "#Bf7fBf" "#B7B")
		      (comment "#a88fac" "#a8a")
		      (warning "#ff0069" "#F06")
		      (docstr "#dfaEf8" "#daf")
		      (highlight "#3f1f3f" "#313")

              (org-src-blk "#00001f" "002")
		      )
		 	 )

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'TransSide-dark)

;; Local Variables:
;; eval: (progn (rainbow-mode))
;; End:
