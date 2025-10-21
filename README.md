# Opencode inside Docker

## Usage
```
oc(){ docker run -ti --rm --name opencode \
	-v $(pwd):/app \
	-e DEEPINFRA_TOKEN=$(cat ~/.deepinfra_token) \
	-e ANTHROPIC_KEY=$(cat ~/.anthropic.key2) \
	-e OPENAI_KEY=$(cat ~/.chatgpt.key) \
	-e EDITOR=vim \
	opencode
}
```
