(progn
    (require 'ruby-block)
      ;; Rake files are ruby, too, as are gemspecs, rackup files, and gemfiles.
         (add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
         (add-to-list 'auto-mode-alist '("Rakefile\\'" . ruby-mode))
         (add-to-list 'auto-mode-alist '("\\.gemspec\\'" . ruby-mode))
         (add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
         (add-to-list 'auto-mode-alist '("Gemfile\\'" . ruby-mode))
         (add-to-list 'auto-mode-alist '("Guardfile\\'" . ruby-mode))
         (add-to-list 'auto-mode-alist '("Capfile\\'" . ruby-mode))
         (add-to-list 'auto-mode-alist '("\\.thor\\'" . ruby-mode))
         (add-to-list 'auto-mode-alist '("Thorfile\\'" . ruby-mode))
         (add-to-list 'auto-mode-alist '("Vagrantfile\\'" . ruby-mode))

         ;; We never want to edit Rubinius bytecode
         (add-to-list 'completion-ignored-extensions ".rbc")

         (define-key 'help-command (kbd "R") 'yari)

         (eval-after-load 'ruby-mode
                          '(progn
                             (defun prelude-ruby-mode-defaults ()
                               (inf-ruby-setup-keybindings)
                               ;; turn off the annoying input echo in irb
                               (setq comint-process-echoes t)
                               (ruby-block-mode t)
                               (ruby-end-mode +1)
                               (electric-indent-mode t)
                               (ruby-tools-mode +1)
                               ;; CamelCase aware editing operations
                               (subword-mode +1))

                             (setq prelude-ruby-mode-hook 'prelude-ruby-mode-defaults)

                             (add-hook 'ruby-mode-hook (lambda ()
                                                         (run-hooks 'prelude-ruby-mode-hook))))))

(provide 'prelude-ruby)
