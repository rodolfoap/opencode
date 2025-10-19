case "$1" in
e)	vi -p .x
	;;
b)	./build.bash
	;;
s)	docker run -ti --rm --name opencode \
		-v $(pwd):/app \
		-e DEEPINFRA_TOKEN=$(cat ~/.deepinfra_token) \
		-e EDITOR=vim \
		--entrypoint=/bin/bash \
		opencode
	;;
"")	docker run -ti --rm --name opencode \
		-v $(pwd):/app \
		-e DEEPINFRA_TOKEN=$(cat ~/.deepinfra_token) \
		-e EDITOR=vim \
		opencode
	;;
esac
