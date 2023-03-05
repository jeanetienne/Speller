//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

public extension SpellingAlphabet {

    static let french = SpellingAlphabet(
        uniqueIdentifier: "speller.alphabet.french",
        associatedLanguageCode: "fr",
        associatedRegionCode: nil,
        recommendedJoinerWord: "comme",
        mainContent: [
            "A": "Anatole",     "B": "Berthe",
            "C": "Célestin",    "D": "Désiré",
            "E": "Eugène",      "F": "François",
            "G": "Gaston",      "H": "Henri",
            "I": "Irma",        "J": "Joseph",
            "K": "Kléber",      "L": "Louis",
            "M": "Marcel",      "N": "Nicolas",
            "O": "Oscar",       "P": "Pierre",
            "Q": "Quintal",     "R": "Raoul",
            "S": "Suzanne",     "T": "Thérèse",
            "U": "Ursule",      "V": "Victor",
            "W": "William",     "X": "Xavier",
            "Y": "Yvonne",      "Z": "Zoé"
        ],
        numbersContent: [:]
    )

}
