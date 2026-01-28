# 🎯 CustomAppBar

This project demonstrates Custom Primary and Secondary AppBar widgets in Flutter. The goal is to keep the implementation simple, clean, and reusable, while being future-ready for conversion into a Flutter package/library.

---
## ✨ Features
✅ PrimaryAppbarWidget
 * Custom reusable AppBar widget
 * Optional leading widget (can be removed easily)
 * Center or left-aligned title
 * Custom height support
 * Optional action buttons
 * Clean & minimal UI

✅ SecondaryAppbarWidget
 * Lightweight secondary AppBar
 * No default back button
 * Can be used as a sub-header / section bar
 * Custom title alignment
 * Optional actions

---
## ✨ Preview
<img 
  src="https://github.com/user-attachments/assets/6b9c5222-4ada-4c13-9ab7-b18edf410081"
  width="300"
/>

---
## ✨ Installation
Add this to your package's pubspec.yaml file:
```
dependencies:
  flutter_custom_app:
    path: ../flutter_custom_app  # For local development
```
from git:
```
dependencies:
  flutter_custom_app:
    git:
      url: https://github.com/yourusername/flutter_custom_app.git  # Your github path
``` 
Then run:
```
flutter pub get
```
---
## 1. PrimaryAppbarWidget
A primary app bar with elevation and shadow, suitable for main screens.

## 2. SecondaryAppbarWidget
A secondary app bar without elevation, suitable for nested views or sub-sections.

---
## 📁 Project Structure
```
lib/
│
├── main.dart
│
├── app.dart
│
├── screens/
│ └── dashboard_screen.dart
│
└── widgets/
├── primary_appbar_widget.dart
└── secondary_appbar_widget.dart
```
---
## PrimaryAppbarWidget Properties

| Property       | Type            | Default          | Description                            |
| -------------- | --------------- | ---------------- | -------------------------------------- |
| `title`        | `String`        | **Required**     | The title text to display              |
| `height`       | `double`        | `kToolbarHeight` | Height of the app bar                  |
| `centerTitle`  | `bool`          | `true`           | Whether to center the title            |
| `titleSpacing` | `double`        | `0`              | Spacing around the title               |
| `titleColor`   | `Color?`        | `null`           | Custom title color (defaults to black) |
| `leading`      | `Widget?`       | `null`           | Leading widget (typically back button) |
| `actions`      | `List<Widget>?` | `null`           | Action buttons on the right side       |
| `key`          | `Key?`          | `null`           | Widget key                             |


## SecondaryAppbarWidget Properties

| Property       | Type            | Default          | Description                            |
| -------------- | --------------- | ---------------- | -------------------------------------- |
| `title`        | `String`        | **Required**     | The title text to display              |
| `height`       | `double`        | `kToolbarHeight` | Height of the app bar                  |
| `centerTitle`  | `bool`          | `true`           | Whether to center the title            |
| `titleSpacing` | `double`        | `0`              | Spacing around the title               |
| `titleColor`   | `Color?`        | `null`           | Custom title color (defaults to black) |
| `actions`      | `List<Widget>?` | `null`           | Action buttons on the right side       |
| `key`          | `Key?`          | `null`           | Widget key                             |

---

## Basic Usage
```
// Using PrimaryAppbarWidget in a Scaffold
Scaffold(
  appBar: PrimaryAppbarWidget(
    title: 'Home Screen',
  ),
  body: Container(),
);

// Using SecondaryAppbarWidget
Scaffold(
  appBar: SecondaryAppbarWidget(
    title: 'Settings',
    centerTitle: false,
  ),
  body: Container(),
);
```
---
## Example with Both Widgets
```
import 'package:flutter/material.dart';
import 'package:your_project/widgets/primary_app_bar_widget.dart';
import 'package:your_project/widgets/secondary_app_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppbarWidget(
        title: 'Primary App Bar',
      ),
      body: Column(
        children: [
          SecondaryAppbarWidget(
            title: 'Secondary App Bar',
          ),
          Expanded(
            child: Center(
              child: Text(
                'Home Screen Content',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
```

---
## Best Practices
1. PrimaryAppbarWidget: Use for main screens and top-level navigation
2. SecondaryAppbarWidget: Use for sub-screens, detail views, or sections within a screen
3. Consistency: Maintain consistent styling across your app by using these widgets
4. Customization: Use the provided parameters instead of modifying the widget files directly

## Implementation Notes
* Both widgets implement PreferredSizeWidget for proper integration with Scaffold
* The automaticallyImplyLeading is set to false by default to provide full control
* Default title color is black but can be overridden with titleColor parameter
* The widgets are stateless and optimized for performance

---
## 📜 License
MIT License
```
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED **"AS IS"**, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
---
