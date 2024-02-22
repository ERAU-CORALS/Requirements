all: integrity publish

publish:
	doorstop publish --verbose --no-levels all all publish

integrity:
	doorstop --verbose --reorder --strict-child-check --warn-all

pathfix:
	set PATH=%PATH%;%APPDATA%Roaming\Python\Python311\Scripts