# EquatableArray
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

# TODO
Make it a cocoapod. Does anyone want to use this?
I'm sure Apple will fix so arrays can be equatable in a near future (Swift 3?)

# License
MIT license. See LICENSE
