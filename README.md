# 🚀 Jaspr Portfolio — Dart SSR + Cubit

![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Jaspr](https://img.shields.io/badge/Jaspr-SSR-orange?style=for-the-badge)
![BLoC](https://img.shields.io/badge/Cubit-State%20Management-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-success?style=for-the-badge)

A modern developer portfolio built using **Jaspr (Dart SSR framework)** with **Cubit (BLoC state management)**.  
It demonstrates a production-ready architecture combining **server-side rendering (SSR)** with **client-side hydration** for interactivity and performance.

---

## ✨ Features

- ⚡ Server-Side Rendering (SEO optimized)
- 🧠 Client-side hydration for interactivity
- ✍️ Typing animation with Cubit (role switcher)
- 📜 Scroll-based navigation highlighting (Scroll Spy)
- 🎨 Modern responsive UI using Jaspr DOM
- 🧩 Clean component-based architecture
- 🌙 Separation between server and client logic
- 🚀 Lightweight and fast performance

---

## 🧱 Tech Stack

- Dart 🐦
- Jaspr (SSR Web Framework)
- Cubit (BLoC)
- HTML/CSS (via Jaspr DOM)
- Minimal JS interop

---

## 📁 Project Structure

lib/
├── app.dart
├── main.server.dart
├── main.client.dart
├── pages/
│   └── portfolio.dart
├── components/
│   ├── hero.dart
│   ├── nav.dart
│   ├── skills.dart
│   ├── projects.dart
│   ├── experience.dart
│   ├── education.dart
│   ├── contact.dart
│   └── footer.dart
├── cubits/
│   └── typed_role_cubit.dart
├── utils/
│   ├── web_utils.dart
│   ├── web_utils_web.dart
│   └── web_utils_stub.dart
└── constants/
    └── theme.dart

---

## 🧠 Architecture

Server (SSR)
   ↓
HTML + SEO rendered
   ↓
Browser loads page
   ↓
Client hydration starts
   ↓
Interactive UI (typing + scroll + state)

---

## ⚡ Highlights

- Clean separation of concerns
- Lightweight state management (Cubit)
- Performance-focused design
- Scalable component structure
- Developer-focused UI storytelling

---

## 👨‍💻 Author

Mohamed Yasser Arafat  
Mobile Developer (Android + Flutter) 🇪🇬  

GitHub: https://github.com/midoyasser16204  
LinkedIn: https://www.linkedin.com/in/mohamed-yasser-4164582a5?utm_source=share_via&utm_content=profile&utm_medium=member_ios

---

## ⭐ Note

This project is designed as a **modern portfolio template** showcasing SSR + hydration architecture with clean UI and smooth UX.