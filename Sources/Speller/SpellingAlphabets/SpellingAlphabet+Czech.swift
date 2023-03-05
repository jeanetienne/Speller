//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

extension SpellingAlphabet {

    static let czech = SpellingAlphabet(
        uniqueIdentifier: "speller.alphabet.czech",
        associatedLanguageCode: "cs",
        associatedRegionCode: nil,
        recommendedJoinerWord: nil,
        mainContent: [
            "A": "Adam",      "B": "Božena",
            "C": "Cyril",     "D": "David",
            "E": "Emil",      "F": "František",
            "G": "Gustav",    "H": "Helena",
            "I": "Ivan",      "J": "Josef",
            "K": "Karel",     "L": "Ludvik",
            "M": "Marie",     "N": "Norbert",
            "O": "Otakar",    "P": "Petr",
            "Q": "Quido",     "R": "Rudolf",
            "S": "Svatopluk", "T": "Tomáš",
            "U": "Urban",     "V": "Václav",
            "W": "Dvojité V", "X": "Xaver",
            "Y": "Ypsilon",   "Z": "Zuzana"
        ],
        numbersContent: [:]
    )

}
