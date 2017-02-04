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

### Installation

To install Curt you have to add the `Curt.swift` file to your project.

Since operator overloading can't be done in a separate module Curt can't be added to you project using solutions like `cocoapods` or `carthage`. (*We are investigating solutions for this*)

### Basic operators

#### Operator `~`

You can use it to constrain any kind of NSLayoutAnchor.

```Swift
viewA.topAnchor ~ viewB.topAnchor
viewA.widthAnchor ~ viewB.widthAnchor
viewA.heightAnchor ~ 120
```

This operator can also be used to constrain all X and Y axis anchors at once
```Swift
viewA ~ viewB
```

#### Operators `<~` `>~`

This operators are the same but working as `lessThanOrEqualTo` and `greaterThanOrEqualTo`.

```Swift
viewA.topAnchor >~ viewB.topAnchor
viewA.widthAnchor <~ viewB.widthAnchor
viewA.heightAnchor >~ 120
```

#### Operators `+` `-`

These operators are used to add the constant to any constraint.
```Swift
viewA.topAnchor ~ viewB.bottomAnchor + 20
viewA.bottomAnchor ~ viewC.bottomAnchor - 20
```

#### Operator `*`
This operator is used to add the multiplier factor to any constraint.
```Swift
viewA.widthAnchor ~ viewA.heightAnchor * 2.0 + 40
```
