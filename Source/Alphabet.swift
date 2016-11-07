//
//  Alphabet.swift
//  Speller
//
//  Created by Jean-Étienne on 7/11/16.
//  Copyright © 2016 Jean-Étienne. All rights reserved.
//

import Foundation

enum Alphabet {

    case InternationalRadiotelephony

    // MARK: - Static methods

    static func loadFallback() -> [Character: String] {
        return [Character("A"): "Alfa",     Character("B"): "Bravo",
                Character("C"): "Charlie",  Character("D"): "Delta",
                Character("E"): "Echo",     Character("F"): "Foxtrot",
                Character("G"): "Golf",     Character("H"): "Hotel",
                Character("I"): "India",    Character("J"): "Juliett",
                Character("K"): "Kilo",     Character("L"): "Lima",
                Character("M"): "Mike",     Character("N"): "November",
                Character("O"): "Oscar",    Character("P"): "Papa",
                Character("Q"): "Quebec",   Character("R"): "Romeo",
                Character("S"): "Sierra",   Character("T"): "Tango",
                Character("U"): "Uniform",  Character("V"): "Victor",
                Character("W"): "Whiskey",  Character("X"): "X-ray",
                Character("Y"): "Yankee",   Character("Z"): "Zulu"]
    }

    // MARK: - Public methods

    func load() throws -> [Character: String] {
        let propertyListPath = try self.PropertyListPath()

        var dictionary = [String: String]()
        var baseFormat = PropertyListSerialization.PropertyListFormat.xml
        if let data = FileManager.default.contents(atPath: propertyListPath) {
            do {
                dictionary = try withUnsafeMutablePointer(to: &baseFormat)
                { (format: UnsafeMutablePointer<PropertyListSerialization.PropertyListFormat>) -> [String : String] in
                    return try PropertyListSerialization.propertyList(from: data, options: [], format: format) as! [String : String]
                }
            } catch {
                throw AlphabetLoadingError.PropertyListDeserializationError
            }
        }

        var finalDictionary = [Character: String]()

        for key in dictionary.keys {
            finalDictionary[Character(key)] = dictionary[key]
        }

        return finalDictionary
    }

    // MARK: - Private methods

    private func PropertyListPath() throws -> String {
        switch self {
        case .InternationalRadiotelephony:
            if let path = Bundle.main.path(forResource: "International_Radiotelephony", ofType: "plist") {
                return path
            } else {
                throw AlphabetLoadingError.PropertyListNotFoundInMainBundle
            }
        }
    }

}

enum AlphabetLoadingError: Error {

    case PropertyListNotFoundInMainBundle

    case PropertyListDeserializationError

}
