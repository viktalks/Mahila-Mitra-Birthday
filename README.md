🎉 Mahila Mitra Birthday Project
Welcome to the Mahila Mitra Birthday Project!
This repository contains two integrated codebases for a beautiful birthday-themed web experience:

🖼️ Code 1: Static HTML, CSS, and JavaScript served with Docker + Apache

🎂 Code 2: A stunning 3D Birthday Cake Animation built with Three.js

📁 Project Structure
csharp
Copy
Edit
Mahila-Mitra-Birthday/
├── apache-static-site/       # Code 1 - Static HTML/CSS/JS site
└── three-js-birthday-cake/   # Code 2 - Three.js animated cake
🚀 Setup and Deployment
🖼️ Code 1: Static HTML/CSS/JS with Docker + Apache
Clone the repository

bash
Copy
Edit
git clone https://github.com/viktalks/Mahila-Mitra-Birthday.git
cd Mahila-Mitra-Birthday
Build the Docker image

bash
Copy
Edit
docker build -t bday-docker-image .
Run the Docker container

bash
Copy
Edit
docker run -d --name bday-container -p 80:80 bday-docker-image
🎂 Code 2: Birthday Cake Animation (Three.js + Yarn)
Navigate to the folder

bash
Copy
Edit
cd three-js-birthday-cake
Install dependencies

bash
Copy
Edit
yarn install
Build and run inside Docker

bash
Copy
Edit
docker build -t cake-docker-image .
docker run -d -p 5173:5173 --name cake-docker-container cake-docker-image yarn dev --host 0.0.0.0
View the animation
Open http://localhost:5173 in your browser.

🛠️ Troubleshooting
Make sure Docker is running.

Ensure Yarn is installed:

bash
Copy
Edit
yarn --version
If ports 80 or 5173 are already in use, change the port mappings:

bash
Copy
Edit
docker run -d -p <custom_port>:80 ...
Verify that ports 80 and 5173 are open for 0.0.0.0 in your firewall settings.

🤝 Contributions
Feel free to open a pull request for improvements, features, or fixes!

👨‍💻 Author
Viktalks
✨ Spreading smiles, one birthday at a time!
