//
//  CodeWordCollection.swift
//  Speller
//
//  Created by Jean-Étienne on 13/11/16.
//  Copyright © 2016 Jean-Étienne. All rights reserved.
//

import Foundation

final class CodeWordCollection {

    var mainCodeWord: String {
        return codeWords[0]
    }

    var codeWords: [String] = []

    init(codeWord: String) {
        codeWords = [codeWord]
    }

    init(codeWords: [String]) {
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
