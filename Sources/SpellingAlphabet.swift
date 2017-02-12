//
//  SpellingAlphabet.swift
//  Speller
//
//  Created by Jean-Étienne on 7/11/16.
//  Copyright © 2016 Jean-Étienne. All rights reserved.
//

import Foundation

internal typealias SpellingAlphabetContent = [Character: CodeWordCollection]

public enum SpellingAlphabet {

    case InternationalRadiotelephony

    case USFinancial

    case LAPD

    case French

    var content: SpellingAlphabetContent {
        return self.loadContent()
    }

    // MARK: - Private helpers
    private func loadContent() -> SpellingAlphabetContent {
        switch self {
        case .InternationalRadiotelephony:
            return self.loadInternationalRadiotelephony()

        case .USFinancial:
            return self.loadUSFinancial()

        case .LAPD:
            return self.loadLAPD()

        case .French:
            return self.loadFrench()
        }
    }

    private func loadInternationalRadiotelephony() -> SpellingAlphabetContent {
        return ["A": "Alfa",        "B": "Bravo",
                "C": "Charlie",     "D": "Delta",
                "E": "Echo",        "F": "Foxtrot",
                "G": "Golf",        "H": "Hotel",
                "I": "India",       "J": "Juliett",
                "K": "Kilo",        "L": "Lima",
                "M": "Mike",        "N": "November",
                "O": "Oscar",       "P": "Papa",
                "Q": "Quebec",      "R": "Romeo",
                "S": "Sierra",      "T": "Tango",
                "U": "Uniform",     "V": "Victor",
                "W": "Whiskey",     "X": "X-ray",
                "Y": "Yankee",      "Z": "Zulu",
                "1": "Unaone",      "2": "Bissotwo",
                "3": "Terrathree",  "4": "Kartefour",
                "5": "Pantafive",   "6": "Soxisix",
                "7": "Setteseven",  "8": "Oktoeight",
                "9": "Novenine",    "0": "Nadazero"]
    }

    private func loadUSFinancial() -> SpellingAlphabetContent {
        return ["A": "Adam",    "B": "Bob",
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
                "Y": "Yogi",    "Z": "Zachary"]
    }

    private func loadLAPD() -> SpellingAlphabetContent {
        return ["A": "Adam",    "B": "Boy",
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
                "Y": "Young",   "Z": "Zebra"]
    }

    private func loadFrench() -> SpellingAlphabetContent {
        return ["A": "Anatole",     "B": "Berthe",
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
                "Y": "Yvonne",      "Z": "Zoé"]
    }

}

