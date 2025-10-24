case "$1" in
e)	vi -p .x
	;;
b)	./build.bash
	;;
s)	docker run -ti --rm --name opencode \
		-v $(pwd):/app \
		-v ./opencode.json:/home/node/.config/opencode/opencode.json \
		-v ./entrypoint:/usr/local/bin/entrypoint \
		-e DEEPINFRA_TOKEN=$(cat ~/.deepinfra_token) \
		-e ANTHROPIC_KEY=$(cat ~/.anthropic.key2) \
		-e OPENAI_KEY=$(cat ~/.chatgpt.key) \
		-e EDITOR=vim \
		--entrypoint=/bin/bash \
		opencode
	;;
diff)	meld opencode.json /home/rap/.opencode/opencode.json
	;;
"")	docker run -ti --rm --name opencode \
		-v $(pwd):/app \
		-v ./opencode.json:/home/node/.config/opencode/opencode.json \
		-v ./entrypoint:/usr/local/bin/entrypoint \
		-e DEEPINFRA_TOKEN=$(cat ~/.deepinfra_token) \
		-e ANTHROPIC_KEY=$(cat ~/.anthropic.key2) \
		-e OPENAI_KEY=$(cat ~/.chatgpt.key) \
		-e EDITOR=vim \
		opencode
	;;
esac
