rebuild:
	git submodule update --init --recursive
	rm -rf ./node_modules
	rm -rf ./bower_components
	npm install
	bower install --allow-root
	brunch b --production
	brunch b --production
desktop:
	rm -rf ./public/desktop
	mkdir ./public/desktop
	cd ./public/desktop
	electron-packager ../../ nextgenjs --platform=all --arch=all --ignore="node_modules|bower_components|\.git"
