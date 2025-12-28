# offline_emergency_intelligence_system
An offline-first mobile application that provides emergency instructions and shelter information during disasters using Flutter and Firebase.
# Offline Emergency Intelligence System 🚨

## 📌 Overview
The **Offline Emergency Intelligence System** is a mobile application designed to provide critical emergency information during natural disasters such as floods, cyclones, and earthquakes—especially when internet connectivity is unavailable.

The application follows an **offline-first approach**, ensuring that essential emergency instructions and shelter information remain accessible even during complete network outages.

---

## ❓ Problem Statement
During disaster situations, internet connectivity often fails, leaving people without access to life-saving emergency instructions, shelter information, and guidance when it is most needed.

---

## 💡 Solution
This project provides an **Offline Emergency Intelligence mobile application** that enables users to:
- Access emergency instructions without internet
- View shelter information stored locally on the device
- Submit basic crowd reports that synchronize when connectivity is restored

The solution prioritizes **reliability, accessibility, and simplicity** during crisis situations.

---

## ✨ Key Features
- Offline access to emergency instructions  
- Emergency mode dashboard for quick navigation  
- Shelter information accessible without internet  
- Crowd report submission with auto-sync when online  
- Firebase Firestore offline data persistence  

---

## 🏗️ System Architecture
- **Frontend:** Flutter mobile application  
- **Offline Layer:** Firebase Firestore offline persistence  
- **Backend:** Firebase Firestore (cloud)  
- **Sync Mechanism:** Automatic data synchronization when internet connectivity is restored  

The app reads cached data locally during offline scenarios and syncs updates seamlessly once connectivity is available.

---

## 🛠️ Tech Stack
- **Flutter** – Cross-platform mobile development  
- **Firebase Firestore** – Cloud database  
- **Firebase Offline Persistence** – Offline data access  
- **Google Cloud Platform** – Backend infrastructure  

---

## 📱 Application Screens
- Emergency Mode Home Screen  
- Emergency Instructions Screen  
- Shelters Information Screen  
- Crowd Report Screen  

---

## 🚀 Future Enhancements
- Google Maps integration for shelter and route visualization  
- Multilingual emergency instructions  
- Enhanced crowd-sourced reporting with location tagging  
- Integration with official disaster alert systems  
- Data analytics for identifying high-risk areas  

---

## 🧪 Project Status
This project is developed as a **hackathon MVP**, focusing on feasibility and real-world applicability rather than full-scale production deployment.

---

## 🤝 Contributors
- **Prasanthi** – Team Lead & Developer  

---

## 📄 License
This project is developed for educational and hackathon purposes.
