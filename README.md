# amitie

App name: Amitie social network

Built using Flutter. Uses Firebase for authentication and saving data

Works on : Android

## Features

1. Sign in / Sign up page (Providers- Email, Google).
2. ‘Home’ page where posts by all users are visible (With timestamp of the post, username of the creator, profile picture of the creator and like button).
3. ‘Profile’ page of the authenticated user which includes name, email address, profile picture and posts made by that user and posts liked by that user.
4. ‘Customization’ page where user is able to change their profile picture.
5. ‘Liked posts’ page where users are able to view the posts they have liked.
6. Users are able to create posts and enter text, photos and videos in the post (not able to send post if there is no text entered in the box).
7. A count of the likes for a particular post are displayed in the post (home page)

 
### Steps to build apk:

```
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
flutter build apk --release
```

#### APK
APK: download https://github.com/suhaniggn/amitie/raw/main/amitie-release.apk and install on your device to run 

![Splash_Screen](https://user-images.githubusercontent.com/101047492/174139685-09b92482-249a-4226-b8e9-3f37e14bb0c3.png)
