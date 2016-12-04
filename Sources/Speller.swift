//
//  Speller.swift
//  Speller
//
//  Created by Jean-Étienne on 7/11/16.
//  Copyright © 2016 Jean-Étienne. All rights reserved.
//

import Foundation

/// A `Speller` provides an interface to spell out strings using `SpellingAlphabet`s
public class Speller {

    public init() {
        
    }

    /// Spells the given string using a spelling alphabet
    ///
    /// - Parameters:
    ///   - phrase: The phrase to be spelled out
    ///   - alphabet: The spelling alphabet to be used to spell out the input phrase
    /// - Returns: An array of `SpelledCharacter`s describing each character of the input phrase
    public func spell(phrase: String, withSpellingAlphabet alphabet: SpellingAlphabet) -> [SpelledCharacter] {
        return phrase.characters.map { character -> SpelledCharacter in
            return spell(character: character,
                         withSpellingAlphabets: fallbackAlphabets(forAlphabet: alphabet))
        }
    }

    // MARK: - Private methods
    private func spell(character: Character, withSpellingAlphabets alphabets: [SpellingAlphabet]) -> SpelledCharacter {
        if let codeWord = self.codeWord(forCharacter: character, withSpellingAlphabets: alphabets) {
            return SpelledCharacter.Match(character, codeWord)
        } else {
            return SpelledCharacter.Unknown(character)
        }
    }

    private func codeWord(forCharacter character: Character, withSpellingAlphabets alphabets: [SpellingAlphabet]) -> CodeWordCollection? {
        guard let alphabetContent = alphabets.first?.load() else {
            return nil
        }

        var codeWord = alphabetContent[character]

        if (codeWord == nil) {
            codeWord = alphabetContent[Character("\(character)".uppercased())]
        }

        if (codeWord == nil) {
            let fallbackAlphabets = Array(alphabets.dropFirst())
            codeWord = self.codeWord(forCharacter: character,
                                     withSpellingAlphabets: fallbackAlphabets)
        }

        return codeWord
    }
    
    private func fallbackAlphabets(forAlphabet alphabet: SpellingAlphabet) -> [SpellingAlphabet] {
        var alphabets = [SpellingAlphabet.BasicLatin,
                         SpellingAlphabet.Latin1Supplement,
                         SpellingAlphabet.LatinExtendedA,
                         SpellingAlphabet.LatinExtendedB]

        if alphabet == SpellingAlphabet.InternationalRadiotelephony {
            alphabets.insert(SpellingAlphabet.InternationalRadiotelephonyNumbers, at: 0)
        }

        alphabets.insert(alphabet, at: 0)

        return alphabets
    }
}
