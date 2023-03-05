//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

extension SpellingAlphabet {

    static let internationalRadiotelephony = SpellingAlphabet(
        uniqueIdentifier: "speller.alphabet.international_radiotelephony",
        associatedLanguageCode: "en",
        associatedRegionCode: nil,
        recommendedJoinerWord: "like",
        mainContent: [
            "A": "Alfa",        "B": "Bravo",
            "C": "Charlie",     "D": "Delta",
            "E": "Echo",        "F": "Foxtrot",
            "G": "Golf",        "H": "Hotel",
            "I": "India",       "J": "Juliett",
            "K": "Kilo",        "L": "Lima",
            "M": "Mike",        "N": "November",
            "O": "Oscar",       "P": "Papa",
            "Q": "Quebec",      "R": "Romeo",
            "S": "Sierra",      "T": "Tango",
            "U": "Uniform",     "V": "Victor",
            "W": "Whiskey",     "X": "X-ray",
            "Y": "Yankee",      "Z": "Zulu",
        ],
        numbersContent: [
            "1": "Unaone",      "2": "Bissotwo",
            "3": "Terrathree",  "4": "Kartefour",
            "5": "Pantafive",   "6": "Soxisix",
            "7": "Setteseven",  "8": "Oktoeight",
            "9": "Novenine",    "0": "Nadazero"
        ]
    )

}
