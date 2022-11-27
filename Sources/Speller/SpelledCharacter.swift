//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

/// A `SpelledCharacter` represents a character and its associated information 
/// when used to spell a phrase.
///
/// The `SpellingResult` represent the type of spelling that was found.
/// - `.match`: used when the character could be found in the target spelling
/// alphabet, and one or more code words were found
/// - `.basicDescription`: used when the character could not be found in the
/// target spelling alphabet, but a description could be found for the character
/// - `.unknown`: used when the character could not be found in the target
/// spelling alphabet
public struct SpelledCharacter {
    public let character: String
    public let position: Int
    public let spellingResult: SpellingResult
}

public enum SpellingResult {
    case match(CodeWordCollection)
    case basicDescription(String)
    case unknown
}

extension SpelledCharacter: Equatable {

    public static func ==(lhs: SpelledCharacter, rhs: SpelledCharacter) -> Bool {
        /// Purposefully ignoring the position, as we may want to compare
        /// spelled characters from different phrases, or from different
        /// positions in the same phrase.
        return lhs.character == rhs.character && lhs.spellingResult == rhs.spellingResult
    }

}

extension SpellingResult: Equatable {}

extension SpelledCharacter: CustomDebugStringConvertible {

    public var debugDescription: String {
        switch spellingResult {
        case .match(let codeWordCollection):
            let codeWordsDebugDescription = codeWordCollection.secondaryCodeWords.reduce(codeWordCollection.mainCodeWord, { (partial, codeWord) -> String in
                return partial + " or " + codeWord
            })
            return "\(character) (at \(position)): \(codeWordsDebugDescription)"
        case .basicDescription(let description):
            return "\(character) (at \(position)): \(description)"
        case .unknown:
            return "\(character) (at \(position)): unknown code word"
        }
    }

}
