# AVFonts

[![CI Status](http://img.shields.io/travis/Arnav/AVFonts.svg?style=flat)](https://travis-ci.org/Arnav/AVFonts)
[![Version](https://img.shields.io/cocoapods/v/AVFonts.svg?style=flat)](http://cocoapods.org/pods/AVFonts)
[![License](https://img.shields.io/cocoapods/l/AVFonts.svg?style=flat)](http://cocoapods.org/pods/AVFonts)
[![Platform](https://img.shields.io/cocoapods/p/AVFonts.svg?style=flat)](http://cocoapods.org/pods/AVFonts)


### What's that for

AVFonts allows you to do anything you want to do with the fonts anywhere and everywhere in the app.

### Why should you use this?

AVFonts can easily swap the system font or specific font you are using with the new font throughout the app. You can increment or decrement font size if needed, too. Now there's no need to select custom fonts in the Interface Builder. Save time by simply configuring its size and style, and then change "system font" to your "new font" everywhere with a single line of code. It's that easy.

![](AVFonts.gif?raw=true "AVFonts screenshot")                            ![](AVFonts2.gif?raw=true "AVFonts  italic screenshot")

### Usage

**1.** import `AVFonts` to `AppDelegate`.

**2.** In `didFinishLaunchingwithOptions` change the font :

**a)** This will swap/change font from system or **currentFontName** to **newFontName** everywhere in the app.
```bash
AVFonts.changeFont(toFont: "Avenir-Heavy")
AVFonts.swapFont(currentFont: "Avenir-Light", toFont: "Avenir-Heavy")
```
**b)** Font swap/change for **types provided** i.e. [ .button, .label, .textField, .textView] throughout the app.

```bash
AVFonts.changeFont(toFont: "Avenir-Heavy", [.button, .label])
AVFonts.swapFont(currentFont: "Avenir-Light", toFont: "Avenir-Heavy", [.button, .label])
```
**c)** **increment/decrement** your orignal font size.

```bash
AVFonts.changeFont(toFont: "Avenir-Heavy", [.button,.label,.textfield], increment: 2)
AVFonts.changeFont(toFont: "Avenir-Heavy", [.button,.label,.textfield], increment: -2)

AVFonts.swapFont(currentFont: "Avenir-Light", toFont: "Avenir-Heavy", [.button, .label, .textfield], increment: 2)
AVFonts.swapFont(currentFont: "Avenir-Light", toFont: "Avenir-Heavy", [.button, .label, .textfield, .textview], increment: -2)

```
**3.** Call **AVFonts.applyAVFonts()** to apply all the changes.

###  Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- iOS 8.0+ / macOS 10.10+ / tvOS 9.0+ / watchOS 2.0+
- Xcode 10.2
- Swift 5.0


## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 1.1.0+ is required to build  AVFonts.

To integrate AVFonts into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
pod "AVFonts"
end
```

Then run the following command:

```bash
$ pod install
```


## Author

Arnav Gupta, arnavgupta180@gmail.com

## License

AVFonts is available under the MIT license. See the LICENSE file for more info.
