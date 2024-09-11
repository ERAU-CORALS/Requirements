all: review integrity publish

publish: FORCE
	doorstop publish all publish
	doorstop publish --markdown all publish-markdown

.PHONY: FORCE

integrity:
	doorstop --reorder --strict-child-check --warn-all

pathfix:
	set PATH=%PATH%;%APPDATA%Roaming\Python\Python311\Scripts

review:
	doorstop clear all
	doorstop review all

excel: FORCE
	doorstop export -x all excel