//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

public typealias SpellingAlphabetContent = [String: CodeWordCollection]

public protocol SpellingAlphabet {
    static var mainContent: SpellingAlphabetContent { get }
    static var numbersContent: SpellingAlphabetContent { get }
    static func spell(_ phrase: String, withNumbers: Bool) -> [SpelledCharacter]
}

extension SpellingAlphabet {

    public static func spell(_ phrase: String, withNumbers: Bool) -> [SpelledCharacter] {
        return enumerate(phrase: phrase)
            .enumerated()
            .map { spell(character: $1, atIndex: $0, withNumbers: withNumbers) }
    }

    // MARK: - Private helpers - Spelling
    private static func enumerate(phrase: String) -> [String] {
        var characters: [String] = []
        phrase.enumerateSubstrings(in: phrase.startIndex..<phrase.endIndex, options: .byComposedCharacterSequences) { (string, rangeOne, rangeTwo, someBool) in
            if let decomposedString = string {
                characters.append(decomposedString)
            }
        }

        return characters
    }

    private static func spell(character: String, atIndex index: Int, withNumbers: Bool) -> SpelledCharacter {
        if let codeWordCollection = codeWordCollection(forCharacter: character, withNumbers: withNumbers) {
            return SpelledCharacter(character: character, position: index, spellingResult: .match(codeWordCollection))
        } else {
            return SpelledCharacter(character: character, position: index, spellingResult: .unknown)
        }
    }

    private static func codeWordCollection(forCharacter character: String, withNumbers: Bool) -> CodeWordCollection? {
        let spellingContent = withNumbers ? mainContent.merging(numbersContent, uniquingKeysWith: { lhs, _ in lhs }) : mainContent

        if let codeWordCollection = spellingContent[character] {
            return codeWordCollection
        }

        let candidates = [
            character.uppercased(),
            character.folding(options: .diacriticInsensitive, locale: nil),
            character.folding(options: .diacriticInsensitive, locale: nil).uppercased()
        ]

        for candidate in candidates {
            guard !candidate.isEmpty else {
                continue
            }

            if let codeWordCollection = spellingContent[candidate] {
                return codeWordCollection
            }
        }

        return nil
    }

}
