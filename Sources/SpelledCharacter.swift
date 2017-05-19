//
//  SpelledCharacter.swift
//  Speller
//
//  Created by Jean-Étienne on 7/11/16.
//  Copyright © 2016 Jean-Étienne. All rights reserved.
//

import Foundation

/// A `SpelledCharacter` represents a character and its associated information 
/// when used to spell a phrase
///
/// - Match: used when the character could be found in the target spelling
/// alphabet, and one or more code words were found
/// - Description: used when the character could not be found in the target spelling
/// alphabet, but a description could be found for the character
/// - Unknown: used when the character could not be found in the target spelling
/// alphabet
public enum SpelledCharacter {

    case Match(String, CodeWordCollection)

    case Description(String, String)

    case Unknown(String)

}

extension SpelledCharacter: Equatable {

    public static func ==(lhs: SpelledCharacter, rhs: SpelledCharacter) -> Bool {
        switch (lhs, rhs) {
        case (let .Match(lhsCharacter, lhsCodeWordCollection), let .Match(rhsCharacter, rhsCodeWordCollection)):
            return lhsCharacter == rhsCharacter && lhsCodeWordCollection == rhsCodeWordCollection
        case (let .Description(lhsCharacter, lhsDescription), let .Description(rhsCharacter, rhsDescription)):
            return lhsCharacter == rhsCharacter && lhsDescription == rhsDescription
        case (let .Unknown(lhsCharacter), let .Unknown(rhsCharacter)):
            return lhsCharacter == rhsCharacter
        default:
            return false
        }
    }

}

extension SpelledCharacter: CustomDebugStringConvertible {

    public var debugDescription: String {
        switch self {
        case .Match(let character, let codeWordCollection):
            let codeWordsDebugDescription = codeWordCollection.secondaryCodeWords.reduce(codeWordCollection.mainCodeWord, { (partial, codeWord) -> String in
                return partial + " or " + codeWord
            })
            return "\(character): \(codeWordsDebugDescription)"
        case .Description(let character, let description):
            return "\(character): \(description)"
        case .Unknown(let character):
            return "\(character): unknown code word"
        }
    }
    
}
