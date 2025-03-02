# Mahila Mitra Birthday Project

This repository contains two separate codebases for a birthday-themed project. Each has its own setup and deployment instructions.

## Code 1: Static HTML, CSS, and JavaScript
This version consists of simple static files served via Apache inside a Docker container.

### Setup and Deployment
1. **Clone the repository**:
   git clone https://github.com/viktalks/Mahila-Mitra-Birthday.git
   cd Mahila-Mitra-Birthday
2. **Build the Docker image**:
   docker build -t bday-app .
3. **Run the container**:
   docker network create bday-network  # Create network if not already created
   docker run -d --name bday-container --network=bday-network -p 80:80 bday-app

## Code 2: Three.js-based Interactive Birthday Animation
This version includes a Three.js-based animation and requires `yarn` for dependency management.

### Setup and Deployment
1. **Install dependencies**:
   yarn install
2. **Run the project locally**:
   yarn dev
   By default, it runs on `http://localhost:5173`.
3. **Build the Docker image**:
   docker build -t threejs-birthday-cake .
4. **Run the container**:
   docker run -d -p 5173:5173 --name threejs-birthday-cake --network=bday-network threejs-birthday-cake yarn dev --host 0.0.0.0

The animation will be available at `http://localhost:5173`.

## Troubleshooting
- Ensure Docker is running and the `bday-network` exists before running the containers.
- If ports 80 or 5173 are already in use, adjust the port mapping in the `docker run` command.
- For issues with `yarn`, ensure it is installed by running `yarn --version`.

For further improvements or contributions, feel free to open a pull request!

**Author:** [Viktalks](https://github.com/viktalks)  
**License:** MIT

