# Flutter Projects

This repo is made of 3 projects:

1. [**Wordpair Generator**](#wordpair): A quick intro to Flutter core concepts and Dart syntax.
2. [**World Time**](#worldtime): A simple world clock application.
3. [**Brew Crew**](#brewcrew): An app to collect brew preferences, using Firebase.

## <a name="wordpair"></a> 1) Wordpair Generator

A quick intro to Flutter core concepts and Dart syntax.

[See 01-wordpair folder](https://github.com/solygambas/flutter-projects/tree/main/01-wordpair)

<p align="center">
    <a href="https://github.com/solygambas/flutter-projects/tree/main/01-wordpair">
        <img src="01-wordpair/screenshot.png" style="width:528px;max-width: 100%;">
    </a>
</p>

### Features

- adding [Dart](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code) and [Flutter](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter) extensions in Visual Studio Code.
- creating a layout with Scaffold.
- adding a theme with ThemeData.
- installing english_words package from [pub.dev](https://pub.dev/) as a dependency.
- building a custom widget.
- displaying generated words with ListView.
- handling favorites with setState.
- using the navigator to display saved word pairs.

Based on [Flutter Crash Course](https://www.youtube.com/watch?v=1gDhl4leEzA) by Brad Taversy (2019).

## <a name="worldtime"></a> 2) World Time

A simple world clock application.

[See 02-world-time folder](https://github.com/solygambas/flutter-projects/tree/main/02-world-time)

<p align="center">
    <a href="https://github.com/solygambas/flutter-projects/tree/main/02-world-time">
        <img src="02-world-time/screenshot.png" style="width:528px;max-width: 100%;">
    </a>
</p>

### Features

- creating several screens and handling routing.
- understanding widget lifecycle.
- writing asynchronous code with async, await and Futures.
- working with the 'http' package to collect data from the World Time API.
- creating a custom WorldTime class to handle API calls.
- handling errors with try and catch blocks.
- passing data between screens.
- formatting time with the 'intl' package.
- displaying a loading spinner with Flutter Spinkit.
- using a ternary operator to handle light and dark modes.
- choosing location with ListView.
- updating the time.

Based on [Flutter Tutorial for Beginners](https://www.youtube.com/watch?v=1ukSR1GRtMU&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ) by Shaun Pelling - The Net Ninja (2019).

## <a name="brewcrew"></a> 3) Brew Crew

An app to collect brew preferences, using Firebase.

[See 03-brew-crew folder](https://github.com/solygambas/flutter-projects/tree/main/03-brew-crew)

<p align="center">
    <a href="https://github.com/solygambas/flutter-projects/tree/main/03-brew-crew">
        <img src="03-brew-crew/screenshot.png" style="width:528px;max-width: 100%;">
    </a>
</p>

### Features

- setting up Firebase in a Flutter app.
- creating an authentication class with Firebase Auth.
- handling anonymous sign in and sign out with a custom user model.
- listening to auth stream with the Provider package.
- building sign in and register forms.
- toggling between forms.
- registering and signing in with email and password.
- adding a loading widget with Flutter Spinkit.
- using Firestore database to store brew preferences for each user.
- listening to database stream.
- listing brew data.
- handling user settings in a bottom sheet.
- working with drop-downs and sliders.
- using a stream builder and updating user data.

Based on [Flutter & Firebase App Tutorial](https://www.youtube.com/playlist?list=PL4cUxeGkcC9j--TKIdkb3ISfRbJeJYQwC) by Shaun Pelling - The Net Ninja (2019).
