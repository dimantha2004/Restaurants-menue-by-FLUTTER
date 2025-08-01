🍽️ Flutter Restaurant Menu App
A beautifully designed, responsive Flutter application for showcasing a restaurant menu using Material Design 3 components and smooth animations.

✨ Features
🏠 Home Screen
Clean and modern layout with horizontally scrollable category chips and a dynamic food grid.

🍕 Category Filtering
Instantly filter items like Pizza, Burgers, Drinks, and more.

📱 Food Detail View
Tap any item for a detailed view with high-res images, descriptions, pricing, and order options.

📐 Responsive Design
Adapts to screen orientation and size (mobile, tablet, landscape).

💫 Hero Animations
Smooth image transitions between views for an immersive experience.

🎨 Material Design 3
Modern look-and-feel using Flutter’s latest UI toolkit and theming.

⚙️ Requirements
Flutter SDK: 3.0.0 or higher

Dart SDK: 3.0.0 or higher

🚀 Getting Started
1️⃣ Clone the Repo
bash
Copy
Edit
git clone <repository-url>
cd restaurant_menu_app
2️⃣ Install Dependencies
bash
Copy
Edit
flutter pub get
3️⃣ Run the App
bash
Copy
Edit
flutter run
🗂️ Project Structure
bash
Copy
Edit
lib/
├── main.dart                     # Entry point
├── models/
│   └── food_item.dart            # Food model
├── data/
│   └── food_data.dart            # Food data and categories
├── screens/
│   ├── home_screen.dart          # Main menu screen
│   └── food_detail_screen.dart   # Item detail page
└── widgets/
    ├── category_list.dart        # Horizontal category chips
    ├── food_grid.dart            # Responsive grid layout
    ├── food_card.dart            # Food item card
    └── rating_stars.dart         # Star rating display
🖼️ Image Setup
✅ Option 1: Use Network Images (Default)
Uses high-quality images from Pexels — no setup needed.

🖼️ Option 2: Use Local Assets
Create folder: assets/images/

Add your images

Update pubspec.yaml:

yaml
Copy
Edit
flutter:
  uses-material-design: true
  assets:
    - assets/images/
Update paths in lib/data/food_data.dart:

dart
Copy
Edit
image: "assets/images/pizza.jpg"
🧩 Customization
➕ Add Food Items
In food_data.dart, append to foodItems list:

dart
Copy
Edit
FoodItem(
  name: "Cheesy Delight",
  price: 1200,
  rating: 4.8,
  description: "Mouth-watering cheesy pizza with fresh toppings.",
  image: "your-image-url-or-asset-path",
  category: "Pizza",
),
➕ Add Categories
Edit the categories list:

dart
Copy
Edit
static const List<String> categories = [
  'All',
  'Pizza',
  'Burgers',
  'Your New Category',
];
🎨 Change Theme
Modify theme in main.dart:

dart
Copy
Edit
theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.orange,
    brightness: Brightness.light,
  ),
),
📱 Responsive Layout
Handled using LayoutBuilder:

Portrait: Single-column layout

Landscape/Tablets: Multi-column grid

Breakpoint: 600px screen width

🧠 Key Tech Highlights
Hero Animations
Use of Hero widget for smooth image transitions.

Material 3 UI
Utilizes latest components: Chips, Elevated Buttons, Cards.

Simple State Management
Efficient UI updates with setState.

📦 Build for Production
Android APK
bash
Copy
Edit
flutter build apk --release
iOS Build
bash
Copy
Edit
flutter build ios --release
🛠️ Troubleshooting
Issue	Solution
Images not loading	Check internet or use local images
Layout looks off	Test on different screen sizes and orientations
Build errors	Ensure Flutter & Dart versions are up to date

🤝 Contributing
Fork the repo

Create a feature branch

Code and test

Open a pull request 🎉
