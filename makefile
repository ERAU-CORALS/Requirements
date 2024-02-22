all: integrity publish

publish: FORCE
	doorstop publish --verbose --no-levels all all publish

.PHONY: FORCE

integrity:
	doorstop --verbose --reorder --strict-child-check --warn-all

pathfix:
	set PATH=%PATH%;%APPDATA%Roaming\Python\Python311\Scripts