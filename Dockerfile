FROM node:18-bullseye
RUN apt-get update && apt-get install -y curl bash neovim && rm -rf /var/lib/apt/lists/*
WORKDIR /app
RUN npm i -g opencode-ai
# OR:        opencode-ai@0.13.9
CMD ["/usr/local/bin/opencode"]
USER node
