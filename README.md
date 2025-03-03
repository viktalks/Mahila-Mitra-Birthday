# Mahila Mitra Birthday Project

This repository contains two separate codebases (Both are integrated) for a birthday-themed project. Each has its own setup and deployment instructions.

## Code 1: Static HTML, CSS, and JavaScript
This version consists of simple static files served via Apache inside a Docker container.

### Setup and Deployment
1. **Clone the repository**:
   git clone https://github.com/viktalks/Mahila-Mitra-Birthday.git
   cd Mahila-Mitra-Birthday
2. **Build the Docker image**:
   docker build -t bday-docker-image .
3. **Run the container**:
   docker run -d --name bday-container -p 80:80 bday-docker-image

## Code 2: Birthday Cake Animation
This version includes a Three.js-based animation and requires `yarn` for dependency management.

### Setup and Deployment
1. **Install dependencies**:
   yarn install
   yarn dev
2. **Build the Docker image**:
   cd /ssc/Mahila-Mitra-Birthday/three-js-birthday-cake

   docker build -t cake-docker-image .
3. **Run the container**:
   docker run -d -p 5173:5173 --name cake-docker-container cake-docker-image yarn dev --host 0.0.0.0

The animation will be available at `http://localhost:5173`.

## Troubleshooting
- Ensure Docker is running.
- If ports 80 or 5173 are already in use, adjust the port mapping in the `docker run` command.
- Port no 80 and 5173 is open for 0.0.0.0 in firewall.
- For issues with `yarn`, ensure it is installed by running `yarn --version`.

For further improvements or contributions, feel free to open a pull request!

**Author:** [Viktalks](https://github.com/viktalks)  

