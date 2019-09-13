
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.



;; (package-initialize)
;; setup melpa
(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")))  
(package-initialize)
;; end setup melpa



;; org mode setting

(setq org-log-done t)
(setq org-todo-keywords
      '((sequence "TODO" "WFF" "DONE")))

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(setq org-link-abbrev-alist
      '(
          ("crsbl"  . "https://crucible.paloaltonetworks.local/cru/")
          ("jira"   . "https://jira-hq.paloaltonetworks.local/browse/")
          ("pllrq"  . "https://bitbucket.paloaltonetworks.local/projects/APOLLO/repos/orchestration/pull-requests/")        
       )
)


;; setup git
(global-set-key (kbd "C-x g") 'magit-status)


(defun today-report()
  " open/create file for today's daily report"
  (interactive)
  (let ((report-file-name   (format-time-string "~/Documents/dailyReports/dailyreport-%Y-%m-%d.org")))
   
    (print report-file-name)
    (if (file-exists-p report-file-name)
        (find-file  report-file-name)
      (progn
        (find-file "~/Documents/dailyreports/dailyReport-template.org")
        (forward-line 3)
        (insert (format-time-string "%Y-%m-%d"))
        (write-file report-file-name)
        (goto-char (point-max))
       )
      )

    )
  )

(global-set-key (kbd "C-c C-d") 'today-report)
(global-set-key (kbd "C-c C-k") (lambda () (interactive) (find-file "~/Documents/tickets.org")))
(global-set-key (kbd "C-c C-t") (lambda () (interactive) (find-file "~/Documents/dailyReports/todo.org")))



(setq-default indent-tabs-mode nil)

;;x(setq inhibit-startup-screen t)

 (add-to-list 'load-path "/Users/smirzaei/.emacs.d/path")
(require 'smart-shift)
(require 'yaml-mode)
(require 'highlight-indentation)

(global-smart-shift-mode 1)

(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))


(put 'narrow-to-region 'disabled nil)
(autoload 'adoc-mode "adoc-mode" nil) 
(add-to-list 'auto-mode-alist (cons "\\.adoc\\'" 'adoc-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "d91ef4e714f05fff2070da7ca452980999f5361209e679ee988e3c432df24347" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(org-agenda-files (quote ("~/Documents/dailyReports/todo.org")))
 '(package-selected-packages
   (quote
    (ob-mongo restclient csv-mode flymd helm json-reformat dashboard solarized-theme lv magit adoc-mode spacemacs-theme json-mode ##))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(show-paren-mode 1)

(setq split-height-threshold nil) 
(setq split-width-threshold 0) 


(put 'erase-buffer 'disabled nil)
(load-theme 'solarized-dark)
(setq inhibit-startup-screen t)

;; open temp file
(defun generate-buffer ()
  (interactive)
  (switch-to-buffer (make-temp-name "scratch")))
(global-set-key (kbd "C-c t") 'generate-buffer)
