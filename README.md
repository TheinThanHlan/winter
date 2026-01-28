# About The Project
This is a Model-View-Controller (MVC) template for flutter.
This project contains.
  1. Mason bricks for project initialization ,component and data  generation.
  2. DatabaseConnector class .
  3. Flutter Components


# Getting Started
  The following example show how to initialize a flutter project with winter package.

  
### Install mason cli and add winter-init brick 
```bash
dart pub global activate mason_cli
mason add -g winter-init --git-url https://github.com/TheinThanHlan/winter.git --git-path bricks/winter-init --git-ref master
```


### Initialize the project
```bash
mkdir my_app
cd my_app
mason make winter-init --version master --name my_app
flutter create .
mason upgrade
```


### Run the project
```bash
flutter run
```
