# AVFonts

[![CI Status](http://img.shields.io/travis/Arnav/AVFonts.svg?style=flat)](https://travis-ci.org/Arnav/AVFonts)
[![Version](https://img.shields.io/cocoapods/v/AVFonts.svg?style=flat)](http://cocoapods.org/pods/AVFonts)
[![License](https://img.shields.io/cocoapods/l/AVFonts.svg?style=flat)](http://cocoapods.org/pods/AVFonts)
[![Platform](https://img.shields.io/cocoapods/p/AVFonts.svg?style=flat)](http://cocoapods.org/pods/AVFonts)


### What it do

AVFonts is for doing anything you want to do with fonts throuhout app.

### Why should you use this ?

AVFonts is for swaping the font you are using with the new font throughout the app.You can increment or decrement your fontsize as per your reqiurements otherwise it will take the fontsize you are using for your old font.i.e Now no need to select custom font from storyboard.Just give its size from there and then change "system font"  to your "new font" will surely save some time  or if you have to change font throughout the app then you can just do it with a single line of code as shown in usage.

### Usage

**1.** import AVFonts to appDelegate.

**2.** In didFinishLaunchingwithOptions change the font :

**a)** This will change font from **currentFontName** to **newFontName**  throughout the app.
```bash
AVFonts.changeFont(currentFont: "Avenir-Light", toFont: "Avenir-Heavy")
```

**b)**  Font change for  **types provided** ie[ .button,.label,.textField,.textView]  throughout the app.

```bash
AVFonts.changeFont(currentFont: "Avenir-Light", toFont: "Avenir-Heavy", [.button,.label])
```
**c)**  **font size increment/decrement**  to your orignal font size.

```bash
AVFonts.changeFont(currentFont: "Avenir-Light", toFont: "Avenir-Heavy", [.button,.label,.textfield], increament: 2)
AVFonts.changeFont(currentFont: "Avenir-Light", toFont: "Avenir-Heavy", [.button,.label,.textfield,.textview], increament: -2)
```
**3.** Call **AVFonts.applyAVFonts()** after doing all the changes.

###  Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- iOS 8.0+ / macOS 10.10+ / tvOS 9.0+ / watchOS 2.0+
- Xcode 8.1, 8.2, 8.3, and 9.0
- Swift 3.0, 3.1, 3.2, and 4.0


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

Then, run the following command:

```bash
$ pod install
```


## Author

Arnav Gupta, arnavgupta180@gmail.com

## License

AVFonts is available under the MIT license. See the LICENSE file for more info.
