//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

extension SpellingAlphabet {

    static let swedish = SpellingAlphabet(
        uniqueIdentifier: "speller.alphabet.swedish",
        associatedLanguageCode: "sv",
        associatedRegionCode: nil,
        recommendedJoinerWord: nil,
        mainContent: [
            "A": "Adam",    "Ä": "Ärlig",
            "Å": "Åke",     "B": "Bertil",
            "C": "Caesar",  "D": "David",
            "E": "Erik",    "F": "Filip",
            "G": "Gustav",  "H": "Helge",
            "I": "Ivar",    "J": "Johan",
            "K": "Kalle",   "L": "Ludvig",
            "M": "Martin",  "N": "Niklas",
            "O": "Olof",    "Ö": "Östen",
            "P": "Petter",  "Q": "Quintus",
            "R": "Rudolf",  "S": "Sigurd",
            "T": "Tore",    "U": "Urban",
            "Ü": "Übel",    "V": "Viktor",
            "W": "Wilhelm", "X": "Xerxes",
            "Y": "Yngve",   "Z": "Zäta"
        ],
        numbersContent: [:]
    )

}
