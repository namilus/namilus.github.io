(require 'ox-publish)
(setq org-publish-project-alist
      '(;; notes component publish all the org-mode files
	;; to html
	("org-notes"
	 :base-directory "~/projects/namilus.github.io/org/"
	 :publishing-directory "~/projects/namilus.github.io/"
	 :recursive t
	 :publishing-function org-html-publish-to-html
	 :headline-levels 4
	 :auto-preamble t
	 )

	("org-static"
	 :base-directory "~/projects/namilus.github.io/org/"
	 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
	 :publishing-directory "~/projects/namilus.github.io/"
	 :recursive t
	 :publishing-function org-publish-attachment
	 )

	("org" :components ("org-notes" "org-static"))))
