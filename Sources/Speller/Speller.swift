//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

/// A `Speller` provides an interface to spell out strings using `SpellingAlphabet`s
public class Speller {

    /// Spells the given string using a spelling alphabet
    ///
    /// - Parameters:
    ///   - phrase: The phrase to be spelled out
    ///   - alphabet: The spelling alphabet to be used to spell out the input phrase
    ///   - useSpellingAlphabetNumbers: Whether to use the spelling alphabet's numbers, or default to simple number names
    /// - Returns: An array of `SpelledCharacter`s describing each character of the input phrase
    public static func spell<Alphabet: SpellingAlphabet>(phrase: String, withSpellingAlphabet alphabet: Alphabet.Type, useSpellingAlphabetNumbers: Bool) -> [SpelledCharacter] {
        let spelling = alphabet.spell(phrase, withNumbers: useSpellingAlphabetNumbers)
        return describeUnknownCharacters(inSpelling: spelling)
    }

    // MARK: - Private methods
    private static func describeUnknownCharacters(inSpelling spelling: [SpelledCharacter]) -> [SpelledCharacter] {
        let characterDescriptors = [CharacterDescriptor(.latin), CharacterDescriptor(.emoji)].compactMap { $0 }

        var spellingWithDescriptions = spelling
        for characterDescriptor in characterDescriptors {
            spellingWithDescriptions = spellingWithDescriptions.map { spelledCharacter -> SpelledCharacter in
                describe(spelledCharacter: spelledCharacter, withCharacterDescriptor: characterDescriptor)
            }
        }

        return spellingWithDescriptions
    }

    private static func describe(spelledCharacter: SpelledCharacter, withCharacterDescriptor characterDescriptor: CharacterDescriptor) -> SpelledCharacter {
        guard
            spelledCharacter.spellingResult == .unknown,
            let description = characterDescriptor.describe(spelledCharacter.character)
        else {
            return spelledCharacter
        }

        return SpelledCharacter(character: spelledCharacter.character, position: spelledCharacter.position, spellingResult: .basicDescription(description))
    }

}
