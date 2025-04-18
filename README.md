# Prompter - AI-Powered Prompt Generator App.

<div align="center">
  <img src="assets/images/logo.png" alt="Prompter Logo" width="200"/>
  
  [![Flutter](https://img.shields.io/badge/Flutter-3.19.0-blue.svg)](https://flutter.dev)
  [![Dart](https://img.shields.io/badge/Dart-3.6.1-blue.svg)](https://dart.dev)
  [![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
  [![Gemini API](https://img.shields.io/badge/Gemini-API-blue.svg)](https://ai.google.dev/)
</div>

## 📱 Overview

Prompter isn’t just an AI chat — it’s your personal brainstorming lab. Whether you're using AI for writing, coding, designing, marketing, or research, this app crafts precise and optimized prompts to help you get the best possible results from your favorite AI tools..

## ✨ Features

- 🎨 Modern dark theme with tech-inspired aesthetics
- 🚀 Smooth animations and transitions
- 📱 Responsive design for all screen sizes
- 🤖 Powered by LLM(large Language Model)
- 💬 Real-time conversation with AI
- 📝 Clean and intuitive user interface
- 🔄 Loading indicators and error handling
- 🎯 Onboarding experience for new users

## 🛠️ Technologies Used

- [Flutter](https://flutter.dev/) - UI framework
- LLM
- [flutter_svg](https://pub.dev/packages/flutter_svg) - SVG rendering
- [google_fonts](https://pub.dev/packages/google_fonts) - Custom fonts
- [smooth_page_indicator](https://pub.dev/packages/smooth_page_indicator) - Page indicators


## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.19.0 or higher)
- Dart SDK (3.6.1 or higher)


### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/prompter.git
   cd prompter
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Add your Gemini API key:
   - Open `lib/screens/main_screen.dart`
   - Replace `'//your api key'` with your actual Gemini API key

4. Run the app:
   ```bash
   flutter run
   ```

## 📁 Project Structure

```
lib/
├── constants/
│   └── theme_constants.dart
├── models/
│   └── onboarding_model.dart
├── screens/
│   ├── splash_screen.dart
│   ├── onboarding_screen.dart
│   └── main_screen.dart
├── services/
│   └── gemini_service.dart
└── main.dart
```

## 🎨 UI Components

- **Splash Screen**: Glowing tech-inspired logo with smooth animations
- **Onboarding**: Three screens with SVG illustrations and smooth page transitions
- **Main Screen**: Clean chat interface with real-time AI responses

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Google Gemini AI](https://ai.google.dev/) for providing the AI capabilities
- [unDraw](https://undraw.co/) for the beautiful illustrations
- [Flutter](https://flutter.dev/) for the amazing framework

## 📧 Contact

Your Name - [@yourtwitter](https://twitter.com/yourtwitter)

Project Link: [https://github.com/yourusername/prompter](https://github.com/yourusername/prompter) 
