# Opencode inside Docker

## Usage
```
oc(){ docker run -ti --rm --name opencode \
        -v $(pwd):/app \
        -e DEEPINFRA_TOKEN=$(cat ~/.deepinfra_token) \
        -e EDITOR=vim \
        opencode
}
```
