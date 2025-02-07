# Node.js Sample Application

This repository contains a **simple Node.js web application** that responds with "Hello from Node.js sample app!" It demonstrates a minimal Docker workflow with **Automated Builds** on DockerHub and **automated dependency updates** via Renovate.

## What Is This App?

- **Language**: Node.js (version 18.x on Alpine)
- **Function**: Serves a basic HTTP response on port `3000`
- **Purpose**: Showcases building, running, and automatically updating a Node.js Docker image

## How It’s Built

1. **Dockerfile**  
   - Based on `node:18-alpine`  
   - Copies the Node.js code, installs dependencies, then runs `npm start`

2. **DockerHub Automated Builds**  
   - This GitHub repo is linked to DockerHub for automatic builds  
   - Each commit to `main` triggers a new image build and push

3. **Automated Updates with Renovate**  
   - [Renovate](https://github.com/marketplace/renovate) watches our `Dockerfile` and `package.json`  
   - Opens PRs if `node:18-alpine` or any npm dependencies are out of date  
   - Merging those PRs triggers DockerHub to rebuild, keeping our image fresh

To tesl load:
curl -v http://localhost:3000


