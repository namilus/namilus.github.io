# Makefile for my github site

.PHONY: all publish

all: publish

publish: publish.el
	@echo "Publishing with current emacs config..."
	emacs --batch --load publish.el --funcall org-publish-all
