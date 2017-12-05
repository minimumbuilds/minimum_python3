.PHONY: build run push

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(dir $(mkfile_path))
mkfile_dir_name := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))
export mkfile_dir

build: $(mkfile_dir)/Dockerfile
	docker build -t $(mkfile_dir_name) .

run:
	docker run -it --rm ${PWD##*/}

patch:
	bumpversion  --commit patch
	git push --tags origin master

minor:
	bumpversion  --commit minor 
	git push --tags origin master

commit:
	git commit -a
