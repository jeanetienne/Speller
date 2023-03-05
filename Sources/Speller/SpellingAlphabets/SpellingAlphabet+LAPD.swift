//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

public extension SpellingAlphabet {

    static let lapd = SpellingAlphabet(
        uniqueIdentifier: "speller.alphabet.lapd",
        associatedLanguageCode: "en",
        associatedRegionCode: nil,
        recommendedJoinerWord: "like",
        mainContent: [
            "A": "Adam",    "B": "Boy",
            "C": "Charles", "D": "David",
            "E": "Edward",  "F": "Frank",
            "G": "George",  "H": "Henry",
            "I": "Ida",     "J": "John",
            "K": "King",    "L": "Lincoln",
            "M": "Mary",    "N": "Nora",
            "O": "Ocean",   "P": "Paul",
            "Q": "Queen",   "R": "Robert",
            "S": "Sam",     "T": "Tom",
            "U": "Union",   "V": "Victor",
            "W": "William", "X": "X-ray",
            "Y": "Young",   "Z": "Zebra"
        ],
        numbersContent: [:]
    )

}
