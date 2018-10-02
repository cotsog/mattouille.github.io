.PHONY: all build add push

build :
	@# pull the latest version of the theme
	@git submodule foreach git pull origin master
	@# Rebuild the site
	@hugo

add :
	@cd public && git add . && git commit -m "rebuilding site `date`"

push :
	@cd public && git push origin master

all : build add push