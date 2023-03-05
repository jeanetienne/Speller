//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

public extension SpellingAlphabet {

    static let finnish = SpellingAlphabet(
        uniqueIdentifier: "speller.alphabet.finnish",
        associatedLanguageCode: "fi",
        associatedRegionCode: nil,
        recommendedJoinerWord: nil,
        mainContent: [
            "A": "Aarne",   "Ä": "Äiti",
            "Å": "Åke",     "B": "Bertta",
            "C": "Celsius", "D": "Daavid",
            "E": "Eemeli",  "F": "Faarao",
            "G": "Gideon",  "H": "Heikki",
            "I": "Iivari",  "J": "Jussi",
            "K": "Kalle",   "L": "Lauri",
            "M": "Matti",   "N": "Niilo",
            "O": "Otto",    "Ö": "Öljy",
            "P": "Paavo",   "Q": "Kuu",
            "R": "Risto",   "S": "Sakari",
            "T": "Tyyne",   "U": "Urho",
            "V": "Vihtori", "W": "Wiski",
            "X": "Äksä",    "Y": "Yrjö",
            "Z": "Tseta"
        ],
        numbersContent: [:]
    )

}
