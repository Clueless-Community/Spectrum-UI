## Welcome to Flutter UI Components contributing guide
 ---


👍🎉 Thank you for investing your time in contributing to our project! 👍🎉

``` In this guide you will get an overview of the contribution workflow. ```

Use the table of contents icon on the top left corner of this document to get to a specific section of this guide quickly.

### For the new Contributors

To get an overview of the project, read the [README]()

---

### Table of Contents

<!-- [What should I know before I get started?](#what-should-i-know-before-i-get-started)
  * [Github](#github)
  * [Flutter](#flutter) -->

[How Can I Contribute?](#how-can-i-contribute)
  * [Creating flutter UI Components](#creating-flutter-ui-componenet)
  * [Updating flutter UI Components](#updating-flutter-ui-components)
  * [Reporting Bugs](#reporting-bugs)
  * [Suggesting Enhancements](#suggesting-enhancements)
  * [Your First Code Contribution](#your-first-code-contribution)
  * [Pull Requests](#pull-requests)

[Additional Notes](#additional-notes)
  * [Issue and Pull Request Labels](#issue-and-pull-request-labels)

---

## Creating Flutter UI Components

Step 1 : Navigate to [ui-components](https://github.com/Clueless-Community/flutter-ui-components/tree/master/lib/ui_components) folder and Create the file for the component ui.

Step 2 : Create all the examples of the components in separate files.

Step 3 : Create another file in the same folder to include all those components in the single file. This can be achieved using [Lists](https://api.flutter.dev/flutter/dart-core/List-class.html).

[For example: ](https://github.com/Clueless-Community/flutter-ui-components/tree/master/lib/ui_components/alerts) Here the 'alert1', 'alert2', 'alert3', 'alert4' are examples of the [Alert](https://api.flutter.dev/flutter/material/AlertDialog-class.html) widget. 
The [alert.dart](https://github.com/Clueless-Community/flutter-ui-components/blob/master/lib/ui_components/alerts/alert.dart) file consist a List of widget type and includes the examples widgets.

Step 4 : Once you are done with designing ui screen. It's time to create it's card at home screen. Navigate to [widget_category](https://github.com/Clueless-Community/flutter-ui-components/blob/master/lib/data/widget_category.dart). Assign a value to the keys 'categoryName' and 'categoryScreen'.

Here, `categoryName` is the key for the title name of a card and `categoryScreen` is the key for the Screen name of the component you have added.

Step 5 : Test it one more time. `Happy Coding.`

---

## Updating Flutter UI Components

Step 1 : Navigate to [ui-components](https://github.com/Clueless-Community/flutter-ui-components/tree/master/lib/ui_components) folder. Open the folder named as the component you wanna update.

Step 2 : Add/Update the example of the component in separate files.

Step 3 : Add your added/updated component in the List contained in the screen file.

[For example: ](https://github.com/Clueless-Community/flutter-ui-components/tree/master/lib/ui_components/alerts) Here the 'alert1', 'alert2', 'alert3', 'alert4' are examples of the [Alert](https://api.flutter.dev/flutter/material/AlertDialog-class.html) widget. 
The [alert.dart](https://github.com/Clueless-Community/flutter-ui-components/blob/master/lib/ui_components/alerts/alert.dart) file consist a List of widget type and includes the examples widgets. Actually this file will act as the screen for the component examples.

Step 4 (`Optional`): Once you are done with designing ui screen. It's time to create it's card at home screen. Navigate to [widget_category](https://github.com/Clueless-Community/flutter-ui-components/blob/master/lib/data/widget_category.dart). Assign a value to the keys 'categoryName' and 'categoryScreen'.

Here, `categoryName` is the key for the title name of a card and `categoryScreen` is the key for the Screen name of the component you have added.

Step 5 : Test it one more time. `Happy Coding.`

---

## Reporting Bugs 🪲

It's always welcomed to report and fix the bugs. 

If you found any bug or the feature not working properly, you can create that issue and start working on it. We will merge your pull request if it will make improvement in the app.









 




