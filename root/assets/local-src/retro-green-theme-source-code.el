;;; retro-green-theme.el --- retro-green theme

;; Copyright (C) 2005, 2006  Xavier Maillard &lt;zedek@gnu.org&gt;
;; Copyright (C) 2005, 2006  Brian Palmer &lt;bpalmer@gmail.com&gt;
;; Copyright (C) 2013 by Syohei YOSHIDA

;; Author: Syohei YOSHIDA &lt;syohex@gmail.com&gt;
;; URL: https://github.com/emacs-jp/replace-colorthemes
;; Version: 0.01

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.

;;; Commentary:
;;
;; Port of retro-green theme from `color-themes'

;;; Code:

(deftheme retro-green
  "retro-green theme")

(let ((foreground "green")
      (faces '((default ((t (:background "black" :foreground "green"))))
               (mouse ((t (:foregound "green"))))
               (cursor ((t (:foregound "green"))))
               (border ((t (:foregound "green")))))))
  (dolist (face (face-list))
    (cond ((memq face '(bold bold-italic))
           (add-to-list 'faces `(,face ((t (:bold t))))))
          ((memq face '(italic underline show-paren-mismatch-face))
           (add-to-list 'faces `(,face ((t (:underline t))))))
          ((memq face '(modeline modeline-buffer-id modeline-mousable
                                 modeline-mousable-minor-mode highlight region
                                 secondary-selection show-paren-match-face))
           (add-to-list 'faces `(,face ((t (:foreground "black"
                                            :background ,foreground
                                            :inverse t))))))
          (t
           (add-to-list 'faces `(,face ((t (nil))))))))
  (apply 'custom-theme-set-faces 'retro-green faces))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'retro-green)

;;; retro-green-theme.el ends here
