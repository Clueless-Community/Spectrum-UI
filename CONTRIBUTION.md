
<!-- [What should I know before I get started?](#what-should-i-know-before-i-get-started)
  * [Github](#github)
  * [Flutter](#flutter) -->





## Welcome to Flutter UI Components contributing guide
 ---


👍🎉 Thank you for investing your time in contributing to our project! 👍🎉

``` In this guide you will get an overview of the contribution workflow. ```

Use the table of contents icon on the top left corner of this document to get to a specific section of this guide quickly.

### For the new Contributors

To get an overview of the project, read the [README](https://github.com/Clueless-Community/flutter-ui-components#readme)


# Submitting Contributions👩‍💻👨‍💻  
Below you will find the process and workflow used to review and merge your changes.  
G## Getting Started

### Issues

#### Create a new issue

If you spot a problem with the docs, search if an issue already exists. If a related issue doesn't exist, you can open a new issue using a relevant issue form.

#### Solve an issue

Scan through our existing issues to find one that interests you. You can narrow down the search using labels as filters. See Labels for more information.

### Making Changes

#### Fork our repo

-   Create a branch related to the issue you plan on working.
## Need more help?🤔  
You can refer to the following articles on basics of Git and Github and also contact the Project Mentors, in case you are stuck:  
- [Forking a Repo](https://help.github.com/en/github/getting-started-with-github/fork-a-repo)  
- [Cloning a Repo](https://help.github.com/en/desktop/contributing-to-projects/creating-an-issue-or-pull-request)  
- [How to create a Pull Request](https://opensource.com/article/19/7/create-pull-request-github)  
- [Getting started with Git and GitHub](https://towardsdatascience.com/getting-started-with-git-and-github-6fcd0f2d4ac6)  
- [Learn GitHub from Scratch](https://lab.github.com/githubtraining/introduction-to-github)  
  

### Pull Requests

-   Prior to opening your pull request add yourself as a contributor

    ```
    npm run contributors:add keonik doc
    ```

    where `keonik` is your github username and `doc` is the [type of contribution](https://allcontributors.org/docs/en/emoji-key)

    Update all-contributors list

    ```
    npm run contributors:generate
    ```

-   Create a Pull Request from your `forked` repo's issue branch
    -   If there are review comments, update them
    -   Commit and push changes
    
-   👍🎉 Reviewer merges your PR! 👍🎉

### Table of Contents
[How Can I Contribute?](#how-can-i-contribute)
  * [Folder Structure](#folder-structure)
  * [Creating flutter UI Components](#creating-flutter-ui-components)
  * [Updating flutter UI Components](#updating-flutter-ui-components)
  * [Reporting Bugs](#reporting-bugs)

---
## Folder Structure

Following tree depicts the folder structure for the `lib` folder.

 ```
├── lib
│   ├── data
|   |   ├── widget_category.dart     # To display the components card at home screen
│   ├── screens
|   |   ├── main_app_widgets        
|   |   |   ├── components_card.dart
|   |   ├── about.dart
|   |   ├── bottom_navigation.dart
|   |   ├── display.dart
|   |   ├── home.dart
|   |   ├── request.dart
|   |   ├── search.dart
|   |   ├── splash_screen.dart
│   ├── ui_components               # Add/update the ui components here
|   |   ├── alerts
|   |   ├── avatars
|   |   ├── bottom_nav
|   |   ├── ...
│   ├── main.dart
```
---

## Creating Flutter UI Components

Step 1 : Navigate to [ui-components](https://github.com/Clueless-Community/flutter-ui-components/tree/master/lib/ui_components) folder and Create the file for the component ui.

Step 2 : Create all the examples of the components in separate files.

Step 3 : Create another file in the same folder to include all those components in the single file. This can be achieved using [Lists](https://api.flutter.dev/flutter/dart-core/List-class.html).

[For example: ](https://github.com/Clueless-Community/flutter-ui-components/tree/master/lib/ui_components/alerts) Here the 'alert1', 'alert2', 'alert3', 'alert4' are examples of the [Alert](https://api.flutter.dev/flutter/material/AlertDialog-class.html) widget. 
The [alert.dart](https://github.com/Clueless-Community/flutter-ui-components/blob/master/lib/ui_components/alerts/alert.dart) file consist a List of widget type and includes the examples widgets.

Step 4 : Once you are done with designing ui screen. It's time to create it's card at home screen. Navigate to [widget_category](https://github.com/Clueless-Community/flutter-ui-components/blob/master/lib/data/widget_category.dart). Assign a value to the keys 'categoryName' and 'categoryScreen'.

Here, `categoryName` is the key for the title name of a card and `categoryScreen` is the key for the Screen name of the component you have added.

Step 5 : Test it one more time. `Happy Coding🤗.`

---

## Updating Flutter UI Components

Step 1 : Navigate to [ui-components](https://github.com/Clueless-Community/flutter-ui-components/tree/master/lib/ui_components) folder. Open the folder named as the component you wanna update.

Step 2 : Add/Update the example of the component in separate files.

Step 3 : Add your added/updated component in the List contained in the screen file.

[For example: ](https://github.com/Clueless-Community/flutter-ui-components/tree/master/lib/ui_components/alerts) Here the 'alert1', 'alert2', 'alert3', 'alert4' are examples of the [Alert](https://api.flutter.dev/flutter/material/AlertDialog-class.html) widget. 
The [alert.dart](https://github.com/Clueless-Community/flutter-ui-components/blob/master/lib/ui_components/alerts/alert.dart) file consist a List of widget type and includes the examples widgets. Actually this file will act as the screen for the component examples.

Step 4 (`Optional`): Once you are done with designing ui screen. It's time to create it's card at home screen. Navigate to [widget_category](https://github.com/Clueless-Community/flutter-ui-components/blob/master/lib/data/widget_category.dart). Assign a value to the keys 'categoryName' and 'categoryScreen'.

Here, `categoryName` is the key for the title name of a card and `categoryScreen` is the key for the Screen name of the component you have added.

Step 5 : Test it one more time. `Happy Coding🤗.`

---

## Coding Guidelines

1. Follow the [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style).

2. Do not use any external package library for UI's. If you want, you can see their source code from GitHub Repository.

3. Don't use any State Management package apart from `Provider`. Consult the maintainers before using state-management logic in the code.

4. Always adhere to the Folder Structure that is specified for your specified UI section.

5. Try to write code as modular as possible.

6. Use meaningful variable and function names.

7. Keep the code clean and organized.

8. Avoid duplicating code. Instead, create reusable widgets or functions.

9. Use comments to explain complex code or describe the purpose of a function or variable.

10. Always test the UI code on multiple devices and screen sizes.


Following these guidelines and adhering to the folder structure will help ensure that your Flutter UI Kit is organized, easy to maintain, and follows best practices. Remember to keep the code clean, modular, and reusable.

---

## Reporting Bugs 

It's always welcomed to report and fix the bugs. 

If you found any bug or the feature not working properly, you can create that issue and start working on it. We will merge your pull request if it will make improvement in the app.

## Developing for Flutter

If you would prefer to write code, you may wish to start with our list of [good first contributions]https://github.com/Clueless-Community/flutter-ui-components/issues

1. [Setting up your engine development environment](https://github.com/flutter/flutter/wiki/Setting-up-the-Engine-development-environment),
   which describes the steps you need to configure your computer to
   work on Flutter's engine. If you only want to write code for the
   Flutter framework, you can skip this step. Flutter's engine mainly
   uses C++, Java, and Objective-C.

2. [Setting up your framework development environment]

   which describes the steps you need to configure your computer to
   work on Flutter's framework. Flutter's framework mainly uses Dart.

3. [Tree hygiene]
   which covers how to land a PR, how to do code review, how to
   handle breaking changes, how to handle regressions, and how to
   handle post-commit test failures.

4. [Our style guide]
   which includes advice for designing APIs for Flutter, and how to
   format code in the framework.
  
   which should be used when proposing a new technical design.  This is a good
   practice to do before coding more intricate changes.

## Social events in the contributor community

Finally, one area where you could have a lot of impact is in contributing to social interactions among the Flutter contributor community itself




 

## Tip from us😇  
It always takes time to understand and learn. So, do not worry at all. We know **you have got this**!💪


🥳 Hurray! You have contributed to our project! 🥳
