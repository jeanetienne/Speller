//
//  SpelledCharacter.swift
//  Speller
//
//  Created by Jean-Étienne on 7/11/16.
//  Copyright © 2016 Jean-Étienne. All rights reserved.
//

import Foundation

enum SpelledCharacter {

    case Match(Character, CodeWordCollection)

    case Unknown(Character)

}

extension SpelledCharacter: CustomDebugStringConvertible {
    var debugDescription: String {
        switch self {
        case .Match(let character, let codeWordCollection):
            return "\(character): \(codeWordCollection.mainCodeWord)"
        case .Unknown(let character):
            return "\(character): unknown code word"
        }
    }
}
