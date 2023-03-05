//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import Foundation

extension SpellingAlphabet {

    static let turkish = SpellingAlphabet(
        uniqueIdentifier: "speller.alphabet.turkish",
        associatedLanguageCode: "tr",
        associatedRegionCode: nil,
        recommendedJoinerWord: nil,
        mainContent: [
            "A": "Adana",      "B": "Bolu",
            "C": "Ceyhan",     "Ç": "Çanakkale",
            "D": "Denizli",    "E": "Edirne",
            "F": "Fatsa",      "G": "Giresun",
            "Ğ": "Yumuşak G",  "H": "Hatay",
            "I": "Isparta",    "İ": "İzmir",
            "J": "Jandarma",   "K": "Kars",
            "L": "Lüleburgaz", "M": "Muş",
            "N": "Niğde",      "O": "Ordu",
            "Ö": "Ödemiş",     "P": "Polatlı",
            "R": "Rize",       "S": "Sinop",
            "Ş": "Şırnak",     "T": "Tokat",
            "U": "Uşak",       "Ü": "Ünye",
            "V": "Van",        "Y": "Yozgat",
            "Z": "Zonguldak"
        ],
        numbersContent: [:]
    )

}
