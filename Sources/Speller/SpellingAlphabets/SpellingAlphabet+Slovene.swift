//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

extension SpellingAlphabet {

    static let slovene = SpellingAlphabet(
        uniqueIdentifier: "speller.alphabet.slovene",
        associatedLanguageCode: "sl",
        associatedRegionCode: nil,
        recommendedJoinerWord: nil,
        mainContent: [
            "A": "Ankaran",   "B": "Bled",
            "C": "Celje",     "Č": "Čatež",
            "D": "Drava",     "E": "Evropa",
            "F": "Fala",      "G": "Gorica",
            "H": "Hrastnik",  "I": "Izola",
            "J": "Jadran",    "K": "Kamnik",
            "L": "Ljubljana", "M": "Maribor",
            "N": "Nanos",     "O": "Ormož",
            "P": "Piran",     "Q": "Queen",
            "R": "Ravne",     "S": "Soča",
            "Š": "Šmarje",    "T": "Triglav",
            "U": "Unec",      "V": "Velenje",
            "W": "Dvojni V",  "X": "Iks",
            "Y": "Ipsilon",   "Z": "Zalog",
            "Ž": "Žalec"
        ],
        numbersContent: [:]
    )

}
