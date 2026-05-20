# 📱 ML Kit Text Scanner

A powerful and user-friendly Flutter application that uses Google ML Kit for real-time text recognition from images. Extract text from photos taken with your camera or select images from your gallery with just a few taps.

[![Flutter](https://img.shields.io/badge/Flutter-3.9+-blue?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.9+-0175C2?logo=dart)](https://dart.dev)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)

## ✨ Features

- **📸 Camera Integration**: Capture text directly from your device camera
- **🖼️ Gallery Support**: Pick and scan images from your device gallery
- **⚡ Real-time Text Recognition**: Fast and accurate OCR powered by Google ML Kit
- **📋 Copy to Clipboard**: Easily copy scanned text with one tap
- **🎨 Clean UI**: Modern Material Design 3 interface with smooth animations
- **⚙️ Error Handling**: Graceful error messages and loading states
- **📱 Cross-Platform**: Works on Android, iOS, Web, Windows, macOS, and Linux

## 🎯 Supported Languages

The app currently recognizes **Latin script** text. Support for additional languages can be easily added by modifying the `TextRecognitionScript` parameter.

## 📋 Requirements

- Flutter SDK: 3.9.2 or higher
- Dart SDK: 3.9.2 or higher
- Android: API level 21 or higher
- iOS: 11.0 or higher

## 🚀 Getting Started

### Prerequisites

Ensure you have Flutter installed on your system. If not, download it from [flutter.dev](https://flutter.dev/docs/get-started/install).

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/muazamadeel/mlkit-text-to-image-scanner.git
   cd text_scanner
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## 📦 Dependencies

- **google_mlkit_text_recognition**: Google ML Kit for text recognition
- **image_picker**: Cross-platform image picker for camera and gallery
- **cupertino_icons**: iOS-style icons
- **flutter_lints**: Lint rules for Flutter

## 🏗️ Project Structure

```
lib/
├── main.dart                    # Main app file with TextScannerPage widget
└── ...                          # Other widgets and utilities
```

## 🎨 Architecture

The app follows a simple **single-screen stateful widget** architecture:

- **TextScannerPage**: Main widget that handles the entire UI and logic
- **Image Handling**: Uses `ImagePicker` for camera and gallery selection
- **Text Recognition**: Utilizes `google_mlkit_text_recognition` for OCR
- **State Management**: Basic `setState` for UI updates

## 🔧 How It Works

1. **User taps Camera or Gallery button**
2. **Image is selected** from the respective source
3. **ML Kit processes the image** and extracts text
4. **Extracted text is displayed** in a scrollable container
5. **User can copy the text** using the copy button

### Text Recognition Pipeline

```
Image File → ML Kit TextRecognizer → RecognizedText → Display in UI
```


## 🔐 Permissions

### Android
Add to `android/app/src/main/AndroidManifest.xml`:
```xml
<uses-permission android:name="android.permission.CAMERA" />
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
```

### iOS
Add to `ios/Runner/Info.plist`:
```xml
<key>NSCameraUsageDescription</key>
<string>This app needs camera access to scan text</string>
<key>NSPhotoLibraryUsageDescription</key>
<string>This app needs photo library access to select images</string>
```

## 🚀 Usage

1. **Launch the app** on your device or emulator
2. **Tap Camera** to capture an image directly
3. **Or tap Gallery** to select an existing image
4. **Wait for processing** - the app will scan the text automatically
5. **View the extracted text** in the results panel
6. **Copy the text** using the copy button for easy sharing

## 🛠️ Customization

### Change Recognition Language
In `main.dart`, modify the `TextRecognitionScript`:
```dart
final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
```

Available scripts: `latin`, `chinese`, `devanagari`, `cyrillic`, `japanese`, `korean`, `arabic`, `hebrew`

### Modify UI Theme
Update the `ThemeData` in `MyApp`:
```dart
theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
  useMaterial3: true,
),
```

## 📱 Supported Platforms

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 🤝 Contributing

Contributions are welcome! To contribute:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Google ML Kit](https://developers.google.com/ml-kit) for the powerful text recognition API
- [Flutter](https://flutter.dev) for the amazing cross-platform framework
- [image_picker](https://pub.dev/packages/image_picker) package for image selection

## 📞 Support

For issues, questions, or suggestions, please open an [Issue](https://github.com/muazamadeel/mlkit-text-to-image-scanner/issues) on GitHub.

## 🔗 Useful Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Google ML Kit Flutter](https://pub.dev/packages/google_mlkit_text_recognition)
- [Image Picker Package](https://pub.dev/packages/image_picker)
- [Dart Documentation](https://dart.dev/guides)

---

**Made with ❤️ by Muazam Adeel**
