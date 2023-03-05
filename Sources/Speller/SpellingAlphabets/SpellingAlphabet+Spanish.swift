//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

extension SpellingAlphabet {

    static let spanish = SpellingAlphabet(
        uniqueIdentifier: "speller.alphabet.spanish",
        associatedLanguageCode: "es",
        associatedRegionCode: nil,
        recommendedJoinerWord: "como",
        mainContent: [
            "A": "Antonio",  "B": "Burgos",
            "C": "Carmen",   "D": "Dolores",
            "E": "Enrique",  "F": "Francia",
            "G": "Granada",  "H": "Historia",
            "I": "Inés",     "J": "José",
            "K": "Kilo",     "L": "Lorenzo",
            "M": "Madrid",   "N": "Navarra",
            "Ñ": "Ñoño",     "O": "Oviedo",
            "P": "París",    "Q": "Querido",
            "R": "Ramón",    "S": "Sábado",
            "T": "Toledo",   "U": "Ulises",
            "V": "Valencia", "W": "Washington",
            "X": "Xilófono", "Y": "Yegua",
            "Z": "Zaragoza"
        ],
        numbersContent: [:]
    )

}
