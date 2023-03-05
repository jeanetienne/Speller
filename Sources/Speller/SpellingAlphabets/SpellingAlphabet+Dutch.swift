//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

extension SpellingAlphabet {

    static let dutch = SpellingAlphabet(
        uniqueIdentifier: "speller.alphabet.dutch",
        associatedLanguageCode: "nl",
        associatedRegionCode: nil,
        recommendedJoinerWord: nil,
        mainContent: [
            "A": "Anton",    "B": "Bernard",
            "C": "Cornelis", "D": "Dirk",
            "E": "Eduard",   "F": "Ferdinand",
            "G": "Gerard",   "H": "Hendrik",
            "I": "Izaak",    "J": "Julius",
            "K": "Karel",    "L": "Lodewijk",
            "M": "Maria",    "N": "Nico",
            "O": "Otto",     "P": "Pieter",
            "Q": "Quotiënt", "R": "Richard",
            "S": "Simon",    "T": "Theodor",
            "U": "Utrecht",  "V": "Victor",
            "W": "Willem",   "X": "Xanthippe",
            "Ĳ": "Ĳmuiden",  "Y": "Ypsilon",
            "Z": "Zaandam"
        ],
        numbersContent: [:]
    )

}
