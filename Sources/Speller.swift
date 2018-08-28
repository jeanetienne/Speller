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
        let spelling = alphabet.spell(phrase)

        return describeUnknownCharacters(inSpelling: spelling)
    }

    // MARK: - Private methods
    private static func describeUnknownCharacters(inSpelling spelling: [SpelledCharacter]) -> [SpelledCharacter] {
        let characterDescriptors = [CharacterDescriptor(.Latin), CharacterDescriptor(.Emoji)].compactMap { $0 }

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
