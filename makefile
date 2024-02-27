all: review integrity publish

publish: FORCE
	doorstop publish --no-levels all all publish
	doorstop publish --markdown --no-levels all all publish

.PHONY: FORCE

integrity:
	doorstop --reorder --strict-child-check --warn-all

pathfix:
	set PATH=%PATH%;%APPDATA%Roaming\Python\Python311\Scripts

review:
	doorstop clear all
	doorstop review all