//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

extension SpellingAlphabet {

    static let portuguesePortugal = SpellingAlphabet(
        uniqueIdentifier: "speller.alphabet.portuguese_portugal",
        associatedLanguageCode: "pt",
        associatedRegionCode: "PT",
        recommendedJoinerWord: nil,
        mainContent: [
            "A": "Aveiro",   "B": "Braga",
            "C": "Coimbra",  "D": "Dafundo",
            "E": "Évora",    "F": "Faro",
            "G": "Guarda",   "H": "Horta",
            "I": "Itália",   "J": "José",
            "K": "Kodak",    "L": "Lisboa",
            "M": "Maria",    "N": "Nazaré",
            "O": "Ovar",     "P": "Porto",
            "Q": "Queluz",   "R": "Rossio",
            "S": "Setúbal",  "T": "Tavira",
            "U": "Unidade",  "V": "Vidago",
            "W": "Waldemar", "X": "Xavier",
            "Y": "York",     "Z": "Zulmira"
        ],
        numbersContent: [:]
    )

}
