#!/bin/bash
export DOCKER_BUILDKIT=1
cd $(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
set -x
docker build --no-cache -t opencode .

mkdir -p		~/.opencode/config/opencode/bin/
cp -v	./opencode.json	~/.opencode/config/opencode/

mkdir -p	~/.opencode/local/share/opencode/
mkdir -p	~/.opencode/local/state/
cat << EOF >	~/.opencode/local/share/opencode/auth.json
{
	"deepinfra": {
		"type": "api",
		"key": "${DEEPINFRA_TOKEN}"
	},
	"anthropic": {
		"type": "api",
		"key": "${ANTHROPIC_KEY}"
	},
	"openai": {
		"type": "api",
		"key": "${OPENAI_KEY}"
	}
}
EOF
sudo chmod -R 777 ~/.opencode/
