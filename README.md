# Speller

## Spelling out words using known spelling alphabets
Speller helps you spell out words using know spelling alphabets. 
When you're on the phone trying to spell a difficult word, or when you want to sound like you're a pilot.

## Features
Speller spells out words for you using any of the provided spelling alphabets. At the moment you can choose among the following spelling alphabets:

- International Radiotelephony
- US Financial
- LAPD
- Czech
- Danish
- Dutch
- Finnish
- French
- German
- Italian
- Norwegian
- Portuguese
- Brazilian Portuguese
- Slovene
- Spanish
- Swedish
- Turkish
- PGP Word List

If a letter is not found in the spelling alphabet, a minimum description of the character is provided, based on:

- Emoji description
- Basic Latin
- Latin 1 Supplement
- Latin Extended A
- Latin Extended B

The most famous spelling alphabet is probably the `InternationalRadiotelephony`, also know as the NATO alphabet.

## Usage
Use the `Speller` class to spell a word, using one of the spelling alphabets:

```swift
  Speller.spell(phrase: "Bagpipe", withSpellingAlphabet: .InternationalRadiotelephony)
```

The returned value is an array of spelled characters with their corresponding codewords:

```swift
  let spelling = Speller.spell(phrase: "Bagpipe", withSpellingAlphabet: .InternationalRadiotelephony)
  print(spelling)
  // [B: Bravo, a: Alfa, g: Golf, p: Papa, i: India, p: Papa, e: Echo]
```
