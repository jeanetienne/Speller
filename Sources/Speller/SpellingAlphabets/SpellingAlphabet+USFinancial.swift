//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

extension SpellingAlphabet {

    static let usFinancial = SpellingAlphabet(
        uniqueIdentifier: "speller.alphabet.us_financial",
        associatedLanguageCode: "en",
        associatedRegionCode: nil,
        recommendedJoinerWord: "like",
        mainContent: [
            "A": "Adam",    "B": "Bob",
            "C": "Carol",   "D": "David",
            "E": "Eddie",   "F": "Frank",
            "G": "George",  "H": "Harry",
            "I": "Ike",     "J": "Jim",
            "K": "Kenny",   "L": "Larry",
            "M": "Mary",    "N": "Nancy",
            "O": "Oliver",  "P": "Peter",
            "Q": "Quincy",  "R": "Roger",
            "S": "Sam",     "T": "Thomas",
            "U": "Uncle",   "V": "Vincent",
            "W": "William", "X": "Xavier",
            "Y": "Yogi",    "Z": "Zachary"
        ],
        numbersContent: [:]
    )

}
