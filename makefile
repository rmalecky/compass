build:
	jekyll build

clean:
	rm _site/Gemfile*
	rm _site/LICENSE
	rm _site/makefile
	rm _site/README.md

deploy: build clean
	aws s3 sync _site s3://malecky.com
