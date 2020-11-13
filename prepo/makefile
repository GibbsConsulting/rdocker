all:
	mkdir -p src && cd src && git init
	mkdir -p repos
	mkdir -p repos/rem.git && cd repos/rem.git && git init --bare
	cd src && echo `date` > something && git add something && git commit -m"Added a thing"
	cd src && git push ../repos/rem.git master
