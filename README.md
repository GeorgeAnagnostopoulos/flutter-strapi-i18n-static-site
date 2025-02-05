# flutter_strapi_static_site

A multilingual Strapi/Flutter static site/app.

## Getting Started

Making a multilingual static site/app with [Strapi](https://strapi.io) and [Flutter](https://flutter.dev)
is easy as you can see in this project.
You can freely expand or alter this project to suit your needs.

I am using Strapi to organize the content of the website,
[easy_localization](https://pub.dev/packages/easy_localization) to make the app multilingual and
[Riverpod](https://riverpod.dev) for state management.
This project is build using the Clean Architecture paradigm.

### Setting up Strapi

Strapi is a well-known Content Management System that I use for quite some time when I create websites because it helps me to deliver fast and it is easy to use it.

Documentation for setting up a local Strapi project can be found in the Strapi documentation pages. There are numerous articles and blog posts on how to setup and run a Strapi instance locally and how to setup the Collections or entities you need for your website so I will not repeat them here.

In this project I use the previous version but you can easily adapt it to use the latest version 5.

I have created the following Collections

- AppBarMenu
- BlogPost
- Product
- Service

You can check the flutter-backend-v4 directory for details. I use the command

` npm run strapi export -- --no-encrypt --no-compress`

to export the collection data from Strapi. Of the file that is produced I use the entities jsonl file which i place in the assets/contents directory updating also the pubspec.yaml file.

### Setting up a new Flutter project

Flutter is the framework of choice when you need multiplatform development as with one codebase you can target Windows, Linux, Android and IOS.
I use the version 3.27.2 of Flutter along with the Riverpod Generator and Easy Localization packages.
You can use VS Code, Android Studio or the command line to set up a new Flutter project.
You need the following the followind Flutter packages

- riverpod
- easy_localization
- go_router
- url_strategy

## What is missing - TODO List

- Error handling
- Responsible Design
- Handling of Images/Media
