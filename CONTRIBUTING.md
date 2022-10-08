# Welcome to the Project

Thank you for investing your time in contributing to our project!
Read our [Code of Conduct]() to keep our community approachable and respectable.


# How to set up local environment

## 1. Clone Repo or Download Files


So, first of all you need to do is clone the [Clueless-Community/flutter-ui-components](https://github.com/Clueless-Community/flutter-ui-components) GitHub repository or you can also download the files.


If you don't know how to clone or where to download the code the watch this video.

[How to Clone a GitHub Repo](https://www.youtube.com/watch?v=CKcqniGu3tA)
[Blog on the same topic, official GitHub Docs](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)

Or you can run this code in your PC/Laptop terminal 

```
git clone https://github.com/Clueless-Community/flutter-ui-components.git
```

Move to flutter-ui-components folder
```
cd flutter-ui-components
```

## 2. Get all the required dependencies

Run the command to generate the Asset file to run the app in your local system

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

example use:
```
Assets.icons.icon.image(height: 45),
```
in place of :
```
 Image.asset(
             'assets/icons/icon.png',
             height: 45,
             width: 45,
           ),
```

## 3. Generate all assets code

Run the command to get all the required dependencies to run the app in your local system

```
flutter pub get
```

## Run the app
You can run the app either on Virtual device or on a real physical device

Watch the video if you don't know how to do it.

[How to run app on physical device](https://www.youtube.com/watch?v=aohkII1C4JY)

```
flutter run
```
## How to Contribute

1. Go inside 'lib/UI_Pages'.
2. Make a folder name like (screenName_yourGitHubID). eg:- loginScreen_Debajyoti14
3. Move into that folder and further make two folders 'Screens' and 'Widgets'.
4. Give name of the Dart file like 'screenName_screen.dart' & 'widgetname_widget'.
5. After your code is ready, just add this copied part again inside the file 'lib/screens/ui_collection.dart' with 'title','sibTitle' & 'screen' value. ![image](https://user-images.githubusercontent.com/91759192/194705582-8102d1b5-4b59-4138-b740-c1c00ac90323.png)
6. Then make a PR accordingly.


Join the [discord](https://discord.gg/qCHV5JMw) channel if you have any doubts
