# 🧭 AdStacks – Dark-Themed Admin Dashboard UI (Flutter)



AdStacks is a sleek, dark-themed **admin dashboard UI** built with Flutter. Designed for performance and modern aesthetics, it includes intuitive navigation, data-driven components, and a responsive layout—perfect for enterprise dashboards, internal tools, and SaaS backends.

---

## ✨ Features

- 🎨 Elegant **Dark UI** powered by Material 3
- 🧭 Sidebar navigation with active route highlighting
- 📊 Dashboard cards for **project metrics**, **notifications**, and **top creators**
- 📅 Attendance and employee management views
- 🗂️ Workspaces section with **subcategories** (AdStacks, Finance)
- 📈 Integrated **line chart** for visual stats using `fl_chart`
- 🔔 Notification pop-up on bell icon with dismiss-on-tap logic
- 🔁 Fully responsive layout ready for web and desktop

---

## 📸 Preview

| Dashboard             | Top Creators Section      | Sidebar Navigation      |
|-----------------------|---------------------------|--------------------------|
| ![Dashboard](screenshots/dashboard.png) | ![Creators](screenshots/creators.png) | ![Sidebar](screenshots/sidebar.png) |

> 💡 *Dark theme is consistent across all views for a modern and minimal UI experience.*

---

## ⚙️ Tech Stack

| Tool/Library        | Purpose                     |
|---------------------|-----------------------------|
| [Flutter](https://flutter.dev) | Cross-platform UI |
| `fl_chart`          | Interactive data visualizations |
| `font_awesome_flutter` | Icon pack for UI elements |
| `Google Fonts - Poppins` | Typography styling |
| `Navigator.pushNamed` | Named route navigation |

---

## 🏁 Getting Started

### 🔧 Prerequisites

- Flutter SDK (>= 3.22)
- Dart >= 3.x
- Any IDE (VSCode / Android Studio)

### 🚀 Run the Project

```bash
git clone https://github.com/yourusername/adstacks_dashboard.git
cd adstacks_dashboard
flutter pub get
flutter run -d chrome
