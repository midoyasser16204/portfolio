# 🚀 Jaspr Portfolio — Dart SSR + Cubit

![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge\&logo=dart\&logoColor=white)
![Jaspr](https://img.shields.io/badge/Jaspr-SSR-orange?style=for-the-badge)
![Cubit](https://img.shields.io/badge/Cubit-BLoC-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-success?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

A modern developer portfolio built with **Jaspr**, the Server-Side Rendering (SSR) framework for Dart, combined with **Cubit (BLoC)** for lightweight state management.

This project demonstrates how to build SEO-friendly web applications using **SSR + Client Hydration**, delivering excellent performance while keeping the UI fully interactive.

## 🌐 Live Demo

🚀 **Website**

**https://midoyasser16204.github.io/portfolio/**

---

## ✨ Features

* ⚡ Server-Side Rendering (SSR)
* 🚀 Client-side Hydration
* 🔍 SEO Optimized
* ✍️ Animated Typing Effect powered by Cubit
* 📜 Scroll Spy Navigation
* 🎨 Modern Responsive Design
* 🧩 Reusable Component Architecture
* 🌙 Clean separation between Server & Client logic
* 💡 Lightweight and scalable architecture
* ⚙️ Minimal JavaScript interop
* 📱 Mobile-friendly UI
* 🚀 Fast loading performance

---

# 🖼️ Preview

> Add screenshots or GIFs here.

```md
![Home](screenshots/home.png)

![Projects](screenshots/projects.png)
```

---

# 🏗 Architecture

```text
                   Server
                      │
                      ▼
        Server-Side Rendering (SSR)
                      │
                      ▼
        HTML delivered to Browser
                      │
                      ▼
      Client-side Hydration Starts
                      │
          ┌───────────┴───────────┐
          ▼                       ▼
     Cubit State             Scroll Spy
     Management              Navigation
          ▼
   Interactive Portfolio
```

---

# 🧱 Tech Stack

* 🐦 Dart
* 🧡 Jaspr
* 🔵 Cubit (flutter_bloc)
* 🌐 HTML & CSS via Jaspr DOM
* ⚡ Minimal JavaScript Interop

---

# 📂 Project Structure

```text
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
```

---

# 🚀 Getting Started

## Clone the repository

```bash
git clone https://github.com/midoyasser16204/portfolio.git
```

```bash
cd portfolio
```

## Install dependencies

```bash
dart pub get
```

## Run the development server

```bash
dart run jaspr serve
```

Visit:

```text
http://localhost:8080
```

---

# 📦 Build for Production

```bash
dart run jaspr build
```

The production build will be generated inside the build directory.

---

# 💡 Why Jaspr?

Jaspr enables developers to build modern web applications entirely in Dart while benefiting from:

* Server-Side Rendering
* Client Hydration
* Better SEO
* Faster initial page load
* Progressive enhancement
* Shared code between server and client
* Flutter-inspired development experience

This project demonstrates these concepts in a real-world portfolio application.

---

# 🎯 Highlights

* ✅ Production-ready architecture
* ✅ Clean code organization
* ✅ Component-based UI
* ✅ Cubit state management
* ✅ Responsive layout
* ✅ Smooth animations
* ✅ Performance-first design
* ✅ SEO-friendly rendering
* ✅ Minimal JavaScript
* ✅ Easy to extend and maintain

---

# 📄 Project Sections

* 🏠 Hero
* 👤 About
* 💼 Experience
* 🚀 Projects
* 🛠 Skills
* 🎓 Education
* 📬 Contact
* 📄 Footer

---

# 👨‍💻 Author

## Mohamed Yasser Arafat

**Flutter & Android Developer 🇪🇬**

GitHub

https://github.com/midoyasser16204

LinkedIn

https://www.linkedin.com/in/mohamed-yasser-4164582a5

Portfolio

https://midoyasser16204.github.io/portfolio/

---

# ⭐ Support

If you found this project helpful, consider giving it a ⭐ on GitHub.

Contributions, issues, and feature requests are always welcome!

---

# 📜 License

This project is licensed under the **MIT License**.

---

<p align="center">
Built with ❤️ using <strong>Dart</strong>, <strong>Jaspr</strong>, and <strong>Cubit</strong>.
</p>
