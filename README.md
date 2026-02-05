# Smart Hospital Appointment System

A digital healthcare platform for booking appointments, viewing live queue status, and managing patient records.

## 🚀 How to Run

### Option 1: One-Click (Windows)
Double-click the **`run_project.bat`** file in this folder.

### Option 2: Manual (Command Line)
1. Open a terminal/command prompt in this folder.
2. Install Python dependencies (if not done):
   ```bash
   pip install flask flask-cors
   ```
3. Run the server:
   ```bash
   python backend/server.py
   ```
4. Open the link shown in the terminal (e.g., `http://127.0.0.1:5000` or `http://YOUR_IP:5000` for sharing).

## 📂 Project Structure
- **backend/**: Contains the Python server (`server.py`) and database.
- **index.html**: Main entry point for Patients.
- **doctor.html**: Portal for Doctors.
- **script.js**: Main frontend logic.
- **style.css**: Styling.

## 🔑 Login Credentials
**Patients:** Login/Register with Name, Age, and Mobile.
**Doctors (Demo):**
- **Dr. Nikhil** (Mobile: `admin1`)
- **Dr. Sagar** (Mobile: `admin2`)
- **Dr. Pratiksha** (Mobile: `admin3`)

## 🌐 How to Get a Public URL (Deployment)
Since this app uses a Python backend, you cannot use GitHub Pages. Instead, use **Render (Free)**:

1. **Push to GitHub:**
   - Follow the steps to push this code to a new GitHub repository.
2. **Deploy on Render:**
   - Go to [dashboard.render.com](https://dashboard.render.com).
   - Click **New +** -> **Web Service**.
   - Connect your GitHub repository.
   - Render will detect the `Procfile` and `requirements.txt` I created.
   - Click **Create Web Service**.
   - Wait 2-3 minutes, and you will get a URL like `https://smart-hospital.onrender.com`.

## 📂 Project Structure
