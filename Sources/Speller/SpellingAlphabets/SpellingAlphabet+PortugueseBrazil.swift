//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

public extension SpellingAlphabet {

    static let portugueseBrazil = SpellingAlphabet(
        uniqueIdentifier: "speller.alphabet.portuguese_brazil",
        associatedLanguageCode: "pt",
        associatedRegionCode: "BR",
        recommendedJoinerWord: nil,
        mainContent: [
            "A": "Amor",     "B": "Bandeira",
            "C": "Cobra",    "D": "Dado",
            "E": "Estrela",  "F": "Feira",
            "G": "Goiaba",   "H": "Hotel",
            "I": "Índio",    "J": "José",
            "K": "Kiwi",     "L": "Lua",
            "M": "Maria",    "N": "Navio",
            "O": "Ouro",     "P": "Pipa",
            "Q": "Quilombo", "R": "Raiz",
            "S": "Saci",     "T": "Tatu",
            "U": "Uva",      "V": "Vitória",
            "W": "Wilson",   "X": "Xadrez",
            "Y": "Yolanda",  "Z": "Zebra"
        ],
        numbersContent: [:]
    )

}
