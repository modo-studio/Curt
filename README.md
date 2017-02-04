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

## Basic operators

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

<img src="https://github.com/carambalabs/Foundation/blob/master/ASSETS/avatar_rounded.png?raw=true" width="70" />

This project is funded and maintained by [Caramba](http://caramba.io). We 💛 open source software!

Check out our other [open source projects](https://github.com/carambalabs/), read our [blog](http://blog.caramba.io) or say :wave: on twitter [@carambalabs](http://twitter.com/carambalabs).

## Contribute

Contributions are welcome :metal: We encourage developers like you to help us improve the projects we've shared with the community. Please see the [Contributing Guide](https://github.com/carambalabs/Foundation/blob/master/CONTRIBUTING.md) and the [Code of Conduct](https://github.com/carambalabs/Foundation/blob/master/CONDUCT.md).

## License
The MIT License (MIT)

Copyright (c) <2014> <Pedro Piñera>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
