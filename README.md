# Flutter Template

A template to kick start Flutter project.

## Project Structure

```
├── assets                      // icons, logos, and static images
├── fonts                       // custom fonts
├── functions                   // cloud functions & online database functions
└── libs
    ├── configs                  // constants that can be configured & used in models
    │
    ├── models                  // collections of data, e.g. User class, Post class
    │
    ├── screens
    │   ├── home
    │   │   ├── local_widgets   // to keep those big widgets used in home.dart
    │   │   └── home.dart
    │   │
    │   └── second
    │       ├── local_widgets   // to keep those big widgets used in second.dart
    │       └── second.dart
    │
    ├── services                // interaction outside the app, e.g.firebase, APIs
    │
    ├── utils                   // functions throughout the app, e.g. time, validation
    │
    ├── widgets                 // widgets throughout the app, e.g. AppBar
    │
    └── main.dart               // entry point & navigations
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
