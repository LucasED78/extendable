# extendable

A set of utilities for improve your code readability and development.

[![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://pub.dev/packages/effective_dart) ![Build](https://github.com/lucased78/extendable/workflows/Build/badge.svg)

## Topics

[Overview](https://pub.dev/packages/extendable#overview)\
[Usage](https://pub.dev/packages/extendable#usage)\
[Examples](https://pub.dev/packages/extendable#examples)\
[Contributions](https://pub.dev/packages/extendable#contributions)

## Overview

The goal of this library is offer utilities that will improve our code readability and improve
our productivity on our development.

## Usage

First import the library

```dart
import 'package:extendable/extendable.dart';
```

Now you can use all extensions available in this library!

## Examples

Let's suppose we need to compare if some object is null or not, we generally to this way

```dart
  String string;

  if (string  == null) {
    /// code
  }

  if (string  != null) {
    /// code
  }
```

But, how we can improve this? That's when the library comes to help.

```dart
  import 'package:extendable/extendable.dart';

  String string;

  if (string.isNull) {
    /// code
  }

  if (string.isNotNull) {
    /// code
  }
```

Much better, huh?

But, we offer some improvements on native functionalities of native libraries, for example the **first** method of a List. If we
do this in a empty or null list:

```dart
  List list;
  List list2 = [];

  final first = list.first // NoSuchMethodError: The getter 'first' was called on null.

  final first2 = list2.first // Bad state: No element
```

With one of the functionalities on the ListUtil extension, you can do this way:

```dart
  import 'package:extendable/extendable.dart';
  
  List list;
  List list2;

  List list;

  final first = list.firstOrNull // Will get null

  final first2 = list2.firstOrNull // Will get null
```

## Contributions

Contributions are welcomed!

* Add your method to a existing util or create a new one for different libraries.

* Write tests for it.

* Write documentation for it.

* Make a pull request to the main branch