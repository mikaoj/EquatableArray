# EquatableArray

[![CI Status](http://img.shields.io/travis/mikaoj/EquatableArray.svg?style=flat)](https://travis-ci.org/mikaoj/EquatableArray)
[![Version](https://img.shields.io/cocoapods/v/EquatableArray.svg?style=flat)](http://cocoapods.org/pods/EquatableArray)
[![License](https://img.shields.io/cocoapods/l/EquatableArray.svg?style=flat)](http://cocoapods.org/pods/EquatableArray)
[![Platform](https://img.shields.io/cocoapods/p/EquatableArray.svg?style=flat)](http://cocoapods.org/pods/EquatableArray)

As of this writing (Swift 2.1) ordinary arrays can't be Equatable.
I wanted do do something likes this:
```Swift
extension Array: Equatable where Element: Equatable {
    // Aaaww...no go, me so sad :'(
}
```
So I wrapped an array in EquatableArray instead, you can use it like this:
```swift
let stuff: EquatableArray = ["Hello", "No"]
```
If you make it a var you can append/remove just as you would with an array:
```swift
var stuff: EquatableArray = ["Hello", "No"]
stuff.append("Yo!")
stuff.removeLast()
```
I'm sure Apple will fix this in a future version of Swift, but until then...

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

EquatableArray is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "EquatableArray"
```

## Author

Joakim Gyllström, joakim@backslashed.se

## License

EquatableArray is available under the MIT license. See the LICENSE file for more info.
