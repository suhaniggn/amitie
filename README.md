# amitie

Amitie social network

## Getting Started

Build using Flutter. Uses Firebase for authentication and saving data 

### Steps to build apk:

```
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
flutter build apk
```

This command creates the generated files that parse each Record from Firestore into a schema object.

