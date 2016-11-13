//
//  Alphabet.swift
//  Speller
//
//  Created by Jean-Étienne on 7/11/16.
//  Copyright © 2016 Jean-Étienne. All rights reserved.
//

import Foundation

typealias AlphabetContent = [Character: CodeWordCollection]

internal final class CodeWordCollection {

    var mainCodeWord: String {
        return codeWords[0]
    }

    var codeWords: [String] = []

    internal init(codeWord: String) {
        codeWords = [codeWord]
    }

    internal init(codeWords: [String]) {
        self.codeWords = codeWords
    }

}

extension CodeWordCollection: ExpressibleByStringLiteral {

    convenience init(stringLiteral value: StringLiteralType) {
        self.init(codeWord: value)
    }

    convenience init(extendedGraphemeClusterLiteral value: StringLiteralType) {
        self.init(codeWord: value)
    }

    convenience init(unicodeScalarLiteral value: StringLiteralType) {
        self.init(codeWord: value)
    }

}

extension CodeWordCollection: ExpressibleByArrayLiteral {

    convenience init(arrayLiteral elements: String...) {
        self.init(codeWords: elements)
    }

}

enum Alphabet {

    case InternationalRadiotelephony

    func load() -> AlphabetContent {
        switch self {
        case .InternationalRadiotelephony:
            fallthrough
        default:
            return self.loadInternationalRadiotelephony()
        }
    }





}
