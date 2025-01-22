YT_DLP_VERSION = $(shell basename $$(curl -Ls -o /dev/null -w %\{url_effective\} https://github.com/yt-dlp/yt-dlp/releases/latest))

.PHONE:	build

build:	## build the container
	docker build --build-arg YT_DLP_VERSION=${YT_DLP_VERSION} -t docker-youtube-dl:local .

