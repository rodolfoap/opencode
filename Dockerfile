FROM node:18-bullseye
RUN apt-get update && apt-get install -y curl bash neovim && rm -rf /var/lib/apt/lists/*
RUN useradd -m -u 1001 opencode
WORKDIR /app
RUN npm i -g opencode-ai
COPY opencode.json /home/opencode/.config/opencode/opencode.json
COPY entrypoint /usr/local/bin/
CMD ["/usr/local/bin/entrypoint"]
USER opencode
