case "$1" in
e)	vi -p .x
	;;
b)	./build.bash
	;;
diff)	meld opencode.json ~/.opencode/opencode.json
	;;
s)	docker run -ti --rm --name opencode \
		-v $(pwd):/app \
		-v ~/.opencode/config/:/home/node/.config/ \
		-v ~/.opencode/local/:/home/node/.local/ \
		-e DEEPINFRA_TOKEN=$(cat ~/.deepinfra_token) \
		-e ANTHROPIC_KEY=$(cat ~/.anthropic.key2) \
		-e OPENAI_KEY=$(cat ~/.chatgpt.key) \
		-e EDITOR=vim \
		--entrypoint=/bin/bash \
		opencode
	;;
"")	docker run -ti --rm --name opencode \
		-v $(pwd):/app \
		-v ~/.opencode/config/:/home/node/.config/ \
		-v ~/.opencode/local/:/home/node/.local/ \
		-e DEEPINFRA_TOKEN=$(cat ~/.deepinfra_token) \
		-e ANTHROPIC_KEY=$(cat ~/.anthropic.key2) \
		-e OPENAI_KEY=$(cat ~/.chatgpt.key) \
		-e EDITOR=vim \
		opencode
	;;
esac
