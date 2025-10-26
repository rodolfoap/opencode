# Opencode inside Docker

## Usage
```
oc(){	docker run -ti --rm --name opencode \
	-w /app \
	-v $(pwd):/app \
	-v /home/rap/.opencode/config/:/home/node/.config/ \
	-v /home/rap/.opencode/local/:/home/node/.local/ \
	-e DEEPINFRA_TOKEN=$(cat ~/.deepinfra_token) \
	-e ANTHROPIC_KEY=$(cat ~/.anthropic.key2) \
	-e OPENAI_KEY=$(cat ~/.chatgpt.key) \
	-e EDITOR=vim \
	opencode
}
```
