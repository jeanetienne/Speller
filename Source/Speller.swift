//
//  Speller.swift
//  Speller
//
//  Created by Jean-Étienne on 7/11/16.
//  Copyright © 2016 Jean-Étienne. All rights reserved.
//

import Foundation

class Speller {

    public func spell(phrase: String, withAlphabet alphabet: Alphabet) -> [SpelledCharacter] {
        var spelling = [SpelledCharacter]()
        for character in phrase.characters {
            if let codeWord = self.codeWord(forCharacter: character, withAlphabet: alphabet) {
                spelling.append(SpelledCharacter.Match(character, codeWord))
            } else {
                spelling.append(SpelledCharacter.Unknown(character))
            }
        }

        return spelling
    }

    // MARK: - Private methods
    private func codeWord(forCharacter character: Character, withAlphabet alphabet: Alphabet) -> String? {
        var reference = alphabet.load()

        var codeWord = reference[character]
        if (codeWord == nil) {
            codeWord = reference[Character("\(character)".uppercased())]
        }

        return codeWord?.mainCodeWord
    }
    
}
