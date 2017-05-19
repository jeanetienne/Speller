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

    /// Spells the given string using a spelling alphabet
    ///
    /// - Parameters:
    ///   - phrase: The phrase to be spelled out
    ///   - alphabet: The spelling alphabet to be used to spell out the input phrase
    /// - Returns: An array of `SpelledCharacter`s describing each character of the input phrase
    public static func spell(phrase: String, withSpellingAlphabet alphabet: SpellingAlphabet) -> [SpelledCharacter] {
        let spelling = phrase.characters.map { character -> SpelledCharacter in
            return spell(character: "\(character)",
                         withSpellingAlphabet: alphabet)
        }

        return describeUnknownCharacters(inSpelling: spelling)
    }

    // MARK: - Private methods
    private static func spell(character: String, withSpellingAlphabet alphabet: SpellingAlphabet) -> SpelledCharacter {
        if let codeWord = codeWord(forCharacter: character, withSpellingAlphabet: alphabet) {
            return SpelledCharacter.Match(character, codeWord)
        } else {
            return SpelledCharacter.Unknown(character)
        }
    }

    private static func codeWord(forCharacter character: String, withSpellingAlphabet alphabet: SpellingAlphabet) -> CodeWordCollection? {
        if let codeWord = alphabet.content[character] {
            return codeWord
        }

        let candidates = [
            character.uppercased(),
            character.folding(options: .diacriticInsensitive, locale: nil),
            character.folding(options: .diacriticInsensitive, locale: nil).uppercased()
        ]

        for candidate in candidates {
            guard candidate.index(after: candidate.startIndex) == candidate.endIndex else {
                continue
            }

            if let codeWordCollection = alphabet.content[candidate] {
                return codeWordCollection
            }
        }

        return nil
    }

    private static func describeUnknownCharacters(inSpelling spelling: [SpelledCharacter]) -> [SpelledCharacter] {
        let characterDescriptors = [CharacterDescriptor(.Latin), CharacterDescriptor(.Emoji)].flatMap { $0 }

        var spellingWithDescriptions = spelling
        for characterDescriptor in characterDescriptors {
            spellingWithDescriptions = spellingWithDescriptions.map { spelledCharacter -> SpelledCharacter in
                describe(spelledCharacter: spelledCharacter, withCharacterDescriptor: characterDescriptor)
            }
        }

        return spellingWithDescriptions
    }

    private static func describe(spelledCharacter: SpelledCharacter,
                                 withCharacterDescriptor characterDescriptor: CharacterDescriptor) -> SpelledCharacter {
        switch spelledCharacter {
        case let .Unknown(unknownCharacter):
            if let description = characterDescriptor.description("\(unknownCharacter)") {
                return SpelledCharacter.Description(unknownCharacter, description)
            } else {
                return spelledCharacter
            }
        default:
            return spelledCharacter
        }
    }

}
