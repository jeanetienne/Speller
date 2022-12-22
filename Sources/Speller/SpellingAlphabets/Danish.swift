//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

public struct Danish: SpellingAlphabet {

    public static var mainContent: SpellingAlphabetContent = [
        "A": "Anna",    "Å": "Aase",
        "Æ": "Ægir",    "B": "Bernhard",
        "C": "Cecilie", "D": "David",
        "E": "Erik",    "F": "Frederik",
        "G": "Georg",   "H": "Hans",
        "I": "Ida",     "J": "Johan",
        "K": "Karen",   "L": "Ludvig",
        "M": "Mari",    "N": "Nikolaj",
        "O": "Odin",    "Ø": "Øresund",
        "P": "Peter",   "Q": "Quintus",
        "R": "Rasmus",  "S": "Søren",
        "T": "Theodor", "U": "Ulla",
        "V": "Viggo",   "W": "William",
        "X": "Xerxes",  "Y": "Yrsa",
        "Z": "Zackarias"
    ]

    public static var numbersContent: SpellingAlphabetContent = [:]

}
