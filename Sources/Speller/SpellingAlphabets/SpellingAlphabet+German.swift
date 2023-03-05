//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

public extension SpellingAlphabet {

    static let german = SpellingAlphabet(
        uniqueIdentifier: "speller.alphabet.german",
        associatedLanguageCode: "de",
        associatedRegionCode: nil,
        recommendedJoinerWord: nil,
        mainContent: [
            "A": "Anton",                 "Ä": "Ärger",
            "B": "Berta",                 "C": "Cäsar",
            "D": "Dora",                  "E": "Emil",
            "F": "Friedrich",             "G": "Gustav",
            "H": "Heinrich",              "I": "Ida",
            "J": "Julius",                "K": ["Kaufmann", "Konrad"],
            "L": "Ludwig",                "M": "Martha",
            "N": "Nordpol",               "O": "Otto",
            "Ö": "Ökonom",                "P": "Paula",
            "Q": "Quelle",                "R": "Richard",
            "S": ["Samuel", "Siegfried"], "ß": "Eszett",
            "T": "Theodor",               "U": "Ulrich",
            "Ü": ["Übermut", "Übel"],     "V": "Viktor",
            "W": "Wilhelm",               "X": ["Xanthippe", "Xaver"],
            "Y": "Ypsilon",               "Z": ["Zacharias", "Zürich"]
        ],
        numbersContent: [:]
    )

}
