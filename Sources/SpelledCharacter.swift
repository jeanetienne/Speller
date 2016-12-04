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
/// - Unknown: used when the character could not be found in the target spelling 
/// alphabet
public enum SpelledCharacter {

    case Match(Character, CodeWordCollection)

    case Unknown(Character)

}

extension SpelledCharacter: Equatable {

    public static func ==(lhs: SpelledCharacter, rhs: SpelledCharacter) -> Bool {
        switch (lhs, rhs) {
        case (let .Match(lhsCharacter, lhsCodeWordCollection), let .Match(rhsCharacter, rhsCodeWordCollection)):
            return lhsCharacter == rhsCharacter && lhsCodeWordCollection == rhsCodeWordCollection
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
            return "\(character): \(codeWordCollection.mainCodeWord)"
        case .Unknown(let character):
            return "\(character): unknown code word"
        }
    }
    
}
