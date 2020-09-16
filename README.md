# Curt

[![Build Status](https://travis-ci.org/carambalabs/Curt.svg?branch=master)](https://travis-ci.org/carambalabs/Curt)
[![codecov](https://codecov.io/gh/carambalabs/Curt/branch/master/graph/badge.svg)](https://codecov.io/gh/carambalabs/Curt)

Curt is a collection of Swift operators to make constraints setup faster to write and easier to read.

Using Curt, constraints like:
```Swift
viewA.topAnchor.constraint(equalTo: viewB.bottomAnchor, constant: 10).isActive = true
```
Can be defined like:
```Swift
viewA.topAnchor ~ viewB.bottomAnchor + 10
```

## Installation

To install Curt you have to add the `Curt.swift` file to your project.

Since operator overloading can't be done in a separate module Curt can't be added to you project using solutions like `cocoapods` or `carthage`. (*We are investigating solutions for this*)

## Operators

These are the Curt operators and some examples, check out the [tests](https://github.com/carambalabs/Curt/blob/master/Example/CurtTests/Tests.swift) to see all the cases and examples between Curt and Native API. All the operators return **activated** `NSLayoutConstraint`.


### Operator `~`

You can use it to constrain any kind of NSLayoutAnchor.

```Swift
viewA.topAnchor ~ viewB.topAnchor
viewA.widthAnchor ~ viewB.widthAnchor
viewA.centerXAnchor ~ viewB.centerXAnchor
viewA.heightAnchor ~ 120
```

This operator can also be used to constrain all X and Y axis anchors at once
```Swift
viewA ~ viewB
```

### Operators `<~` `>~`

This operators are the same but working as `lessThanOrEqualTo` and `greaterThanOrEqualTo`.

```Swift
viewA.topAnchor >~ viewB.topAnchor
viewA.widthAnchor <~ viewB.widthAnchor
viewA.heightAnchor >~ 120
```

### Operators `+` `-`

These operators are used to add the constant to any constraint.
```Swift
viewA.topAnchor ~ viewB.bottomAnchor + 20
viewA.bottomAnchor ~ viewC.bottomAnchor - 20
```

### Operator `*`
This operator is used to add the multiplier factor to any constraint.
```Swift
viewA.widthAnchor ~ viewA.heightAnchor * 2.0 + 40
```

## About

<img src="https://github.com/carambalabs/Foundation/blob/master/ASSETS/logo-salmon.png?raw=true" width="200" />

This project is funded and maintained by [Caramba](http://caramba.io). We 💛 open source software!

Check out our other [open source projects](https://github.com/carambalabs/), read our [blog](http://blog.caramba.io) or say :wave: on twitter [@carambalabs](http://twitter.com/carambalabs).

## Contribute

Contributions are welcome :metal: We encourage developers like you to help us improve the projects we've shared with the community. Please see the [Contributing Guide](https://github.com/carambalabs/Foundation/blob/master/CONTRIBUTING.md) and the [Code of Conduct](https://github.com/carambalabs/Foundation/blob/master/CONDUCT.md).

## License

Curt is available under the MIT license. See the LICENSE file for more info.
