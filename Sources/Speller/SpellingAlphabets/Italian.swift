//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

public struct Italian: SpellingAlphabet {

    public static var mainContent: SpellingAlphabetContent = [
        "A": "Ancona",          "B": "Bologna",
        "C": "Como",            "D": "Domodossola",
        "E": "Empoli",          "F": "Firenze",
        "G": "Genova",          "H": "Hotel",
        "I": "Imola",           "J": "Jolly",
        "K": "Kappa",           "L": "Livorno",
        "M": "Milano",          "N": "Napoli",
        "O": "Otranto",         "P": "Padova",
        "Q": "Quadro",          "R": "Roma",
        "S": "Savona",          "T": "Torino",
        "U": "Udine",           "V": "Venezia",
        "W": "Washington",      "X": ["Xeres", "Xilofono"],
        "Y": ["York", "Yacht"], "Z": "Zara"
    ]

    public static var numbersContent: SpellingAlphabetContent = [:]

}
