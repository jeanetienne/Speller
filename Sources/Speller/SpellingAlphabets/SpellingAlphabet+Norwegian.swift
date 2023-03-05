//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

extension SpellingAlphabet {

    static let norwegian = SpellingAlphabet(
        uniqueIdentifier: "speller.alphabet.norwegian",
        associatedLanguageCode: "nn",
        associatedRegionCode: nil,
        recommendedJoinerWord: nil,
        mainContent: [
            "A": "Anna",     "Å": "Åse",
            "Æ": "Ærlig",    "B": "Bernhard",
            "C": "Caesar",   "D": "David",
            "E": "Edith",    "F": "Fredrik",
            "G": "Gustav",   "H": "Harald",
            "I": "Ivar",     "J": "Johan",
            "K": "Karin",    "L": "Ludvig",
            "M": "Martin",   "N": "Nils",
            "O": "Olivia",   "Ø": "Østen",
            "P": "Petter",   "Q": "Quintus",
            "R": "Rikard",   "S": "Sigrid",
            "T": "Teodor",   "U": "Ulrik",
            "V": "Enkelt-V", "W": "Dobbelt-V",
            "X": "Xerxes",   "Y": "Yngling",
            "Z": "Zakarias"
        ],
        numbersContent: [:]
    )

}
