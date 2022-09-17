all:

CURL = curl

deps-circleci:
	git clone https://github.com/gsnedders/anolis anolis
	cat config/requirements.txt > requirements.txt
	echo "/app/anolis" >> requirements.txt

deps-docker:
	apt-get install -y make curl

updatenightly:
	$(CURL) -sSLf https://raw.githubusercontent.com/wakaba/ciconfig/master/ciconfig | RUN_GIT=1 REMOVE_UNUSED=1 perl

## License: Public Domain.
