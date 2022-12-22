//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

public struct Swedish: SpellingAlphabet {

    public static var mainContent: SpellingAlphabetContent = [
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
    ]

    public static var numbersContent: SpellingAlphabetContent = [:]

}
