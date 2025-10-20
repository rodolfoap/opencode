# Agent Guidelines

## Build/Lint/Test Commands
- Build: `./build.bash` or `./.x b`
- Run: `./.x` (default) or `./.x s` for shell access
- Edit config: `./.x e`
- Test: No test framework configured

## Project Structure
- `.x` - Main launcher script with case statements for build/shell/edit operations
- `build.bash` - Docker image build script
- `Dockerfile` - Multi-stage container definition using Node.js 18 on Debian Bullseye
- `entrypoint` - Container startup script that configures auth.json from environment variables
- `opencode.json` - Configuration file mounted into container at runtime

## Code Style Guidelines
- Use bash scripting for automation with proper error handling
- Follow Docker best practices - use official base images, clean up apt caches
- Keep configuration in JSON format with proper schema validation
- Use environment variables for secrets (DEEPINFRA_TOKEN, ANTHROPIC_KEY, OPENAI_KEY, EDITOR)
- Maintain clean, minimal Docker images - run as non-root user
- Use .x script for common operations (build, shell, edit)
- Follow Node.js 18+ compatibility for Docker base images
- Mount configuration files as volumes rather than baking into image
