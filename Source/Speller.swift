//
//  Speller.swift
//  Speller
//
//  Created by Jean-Étienne on 7/11/16.
//  Copyright © 2016 Jean-Étienne. All rights reserved.
//

import Foundation

public class Speller {

    func spell(phrase: String, withSpellingAlphabet alphabet: SpellingAlphabet) -> [SpelledCharacter] {
        var spelling = [SpelledCharacter]()
        for character in phrase.characters {
            if let codeWord = self.codeWord(forCharacter: character, withSpellingAlphabet: alphabet) {
                spelling.append(SpelledCharacter.Match(character, codeWord))
            } else {
                spelling.append(SpelledCharacter.Unknown(character))
            }
        }

        return spelling
    }

    // MARK: - Private methods
    private func codeWord(forCharacter character: Character, withSpellingAlphabet alphabet: SpellingAlphabet) -> CodeWordCollection? {
        var alphabetContent = alphabet.load()

        var codeWord = alphabetContent[character]
        if (codeWord == nil) {
            codeWord = alphabetContent[Character("\(character)".uppercased())]
        }

        return codeWord
    }
    
}
