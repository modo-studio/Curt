# Curt

[![Build Status](https://travis-ci.org/carambalabs/Curt.svg?branch=master)](https://travis-ci.org/carambalabs/Curt)
[![codecov](https://codecov.io/gh/carambalabs/Curt/branch/master/graph/badge.svg)](https://codecov.io/gh/carambalabs/Curt)

Curt is a collection of Swift operators to make constraints set up faster to write and easier to read.

Aren't you tired of writing all those boring constraints? :expressionless: Writting all the time those long, ugly and very repetitive lines... 99% having to activate all of them manually... having to write 4 different constraints to make a view match parent edges...Don't worry! Curt is here to save you a bunch of time and suffer!

This is an example of how easily you define a constraint using Curt:
```Swift
viewA.topAnchor ~ viewB.bottomAnchor + 10
```
Which is equivalent to:
```Swift
viewA.topAnchor.constraint(equalTo: viewB.bottomAnchor, constant: 10).isActive = true
```
or:
```Swift
//todo
```
Which is equivalent to:
```Swift
viewA.topAnchor.constraint(equalTo: viewB.topAnchor).isActive = true
viewA.leadingAnchor.constraint(equalTo: viewB.leadingAnchor).isActive = true
viewA.trailingAnchor.constraint(equalTo: viewB.trailingAnchor).isActive = true
viewA.bottomAnchor.constraint(equalTo: viewB.bottomAnchor).isActive = true
```
