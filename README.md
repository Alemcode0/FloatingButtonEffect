# ✈️ Floating Button with Orbiting Text — SwiftUI Animation

Welcome to one of my playful SwiftUI UI experiments: a floating action button with orbiting text and smooth animation — perfect for travel apps or creative app intros! 🌍🚀

![image alt](https://github.com/Alemcode0/FloatingButtonEffect/blob/main/Floating-Button.png)

## 🔧 Built With
- SwiftUI
- Trigonometric animation using cos / sin
- Smooth transitions with rotationEffect & scaleEffect
- Custom fonts and shadows for vibrant styling
## 📸 Preview
A button that gently floats while animated text like "NEXT STOP" circles around it — giving your UI a touch of energy and motion!

## 💡 Key Features
- 🌊 Bouncing button effect using offset and repeatForever animation
- 🌪️ Circular text motion calculated with angles (360° / word count)
- ✍️ Fully customizable — change words, colors, fonts, orbit radius, etc.
- 🖼️ Styled background using .scaledToFill() and .ignoresSafeArea()
## 👨‍💻 Use Case
This component is ideal for:

- ✈️ Travel apps
- 🎮 Gamified menus
- 🧭 Creative UI buttons and micro-interactions
## 🧪 Sample Code
Text(texts[i])
    .rotationEffect(.degrees(-rotation))
    .offset(x: 60 * cos(.pi * 2 * Double(i) / Double(texts.count)),
            y: 60 * sin(.pi * 2 * Double(i) / Double(texts.count)))
## 🚀 Getting Started
- Copy the FloatingButton.swift into your SwiftUI project
- Replace the text, background image, or button action
- Customize to match your app’s personality
## ⭐ Let’s Connect
If you found this interesting, feel free to follow me here or on LinkedIn — and star the repo if it inspired you!
