# Speller

[![Build Status](https://travis-ci.org/jeanetienne/Speller.svg?branch=master)](https://travis-ci.org/jeanetienne/Speller)
[![GitHub license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/jeanetienne/Speller/master/LICENSE)
[![GitHub release](https://img.shields.io/github/release/jeanetienne/Speller.svg)](https://github.com/jeanetienne/Speller/releases)
[![codecov.io](https://codecov.io/github/jeanetienne/Speller/coverage.svg?branch=master&style=flat)](https://codecov.io/github/jeanetienne/Speller/?branch=master)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/Speller.svg?style=flat)](https://cocoapods.org/pods/Speller)
[![Platform](https://img.shields.io/cocoapods/p/Speller.svg?style=flat)](http://cocoadocs.org/docsets/Speller)

## Spelling out words using known spelling alphabets
Speller helps you spell out words using know spelling alphabets. 
When you're on the phone trying to spell a difficult word, or when you want to sound like you're a pilot.

## Features
Speller spells out words for you using any of the provided spelling alphabets. At the moment you can choose among the following spelling alphabets:

- International Radiotelephony
- International Radiotelephony (Numbers)
- US Financial
- LAPD
- French

The following are not spelling alphabets *per se* but help provide a minimum description of other characters:

- Basic Latin
- Latin 1 Supplement
- Latin Extended A
- Latin Extended B 

The most famous spelling alphabet is probably the `InternationalRadiotelephony`, also know as the NATO alphabet.

## Usage
Use a the `Speller` class to spell a word, by providing it a spelling alphabet:

```swift
  let speller = Speller()
  speller.spell(phrase: "Bagpipe", 
  withSpellingAlphabet: SpellingAlphabet.InternationalRadiotelephony)
```

The returned value is an array of spelled characters with their corresponding codewords:

```swift
  let speller = Speller()
  let spelling = speller.spell(phrase: "Bagpipe", 
                 withSpellingAlphabet: SpellingAlphabet.InternationalRadiotelephony)
  print(spelling)
  // [B: Bravo, a: Alfa, g: Golf, p: Papa, i: India, p: Papa, e: Echo]
```

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate Speller into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
  pod 'Speller'
```

Then, run the following command:

```bash
$ pod install
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate Speller into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "jeanetienne/Speller"
```

Run `carthage update` to build the framework and drag the built `Speller.framework` into your Xcode project.

### Manually

If you prefer not to use either of the aforementioned dependency managers, you can integrate Speller into your project manually.
