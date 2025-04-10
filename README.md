
# 🎉 Mahila Mitra Birthday Project

Welcome to the **Mahila Mitra Birthday Project**!  
This repository contains **two integrated codebases** for a beautiful birthday-themed web experience:

- 🖼️ **Code 1**: Static HTML, CSS, and JavaScript served with Docker + Apache  
- 🎂 **Code 2**: A stunning 3D Birthday Cake Animation built with Three.js  

---

## 📁 Project Structure

```
Mahila-Mitra-Birthday/
├──                           # Code 1 - Static HTML/CSS/JS site
└── three-js-birthday-cake/   # Code 2 - Three.js animated cake
```

---

## 🚀 Setup and Deployment

### 🖼️ Code 1: Static HTML/CSS/JS with Docker + Apache

1. **Clone the repository**  
   ```bash
   git clone https://github.com/viktalks/Mahila-Mitra-Birthday.git
   cd Mahila-Mitra-Birthday
   ```

2. **Build the Docker image**  
   ```bash
   docker build -t bday-docker-image .
   ```

3. **Run the Docker container**  
   ```bash
   docker run -d --name bday-container -p 80:80 bday-docker-image
   ```

---

### 🎂 Code 2: Birthday Cake Animation (Three.js + Yarn)

1. **Navigate to the folder**  
   ```bash
   cd three-js-birthday-cake
   ```

2. **Install dependencies**  
   ```bash
   yarn install
   ```

3. **Build and run inside Docker**  
   ```bash
   docker build -t cake-docker-image .
   docker run -d -p 5173:5173 --name cake-docker-container cake-docker-image yarn dev --host 0.0.0.0
   ```

4. **View the animation**  
   Open [http://localhost:5173](http://localhost:5173) in your browser.

---

## 🛠️ Troubleshooting

- Make sure **Docker** is running.
```bash
  systemctl status docker
  ```
- Ensure **Yarn** is installed:  
  ```bash
  yarn --version
  ```
- Verify that ports 80 and 5173 are **open for 0.0.0.0** in your firewall/NSG settings.

---

## 🤝 Contributions

Feel free to open a **pull request** for improvements, features, or fixes!

---

## 👨‍💻 Author

**Viktalks**  
✨ Spreading smiles, one birthday at a time!
