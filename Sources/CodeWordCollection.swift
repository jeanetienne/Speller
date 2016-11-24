//
//  CodeWordCollection.swift
//  Speller
//
//  Created by Jean-Étienne on 13/11/16.
//  Copyright © 2016 Jean-Étienne. All rights reserved.
//

import Foundation

public final class CodeWordCollection {

    public var mainCodeWord: String {
        return codeWords[0]
    }

    public var codeWords: [String] = []

    init(codeWord: String) {
        codeWords = [codeWord]
    }

    init(codeWords: [String]) {
        self.codeWords = codeWords
    }

}

extension CodeWordCollection: Equatable {

    public static func ==(lhs: CodeWordCollection, rhs: CodeWordCollection) -> Bool {
        return lhs.codeWords == rhs.codeWords
    }

}

extension CodeWordCollection: ExpressibleByStringLiteral {

    convenience public init(stringLiteral value: StringLiteralType) {
        self.init(codeWord: value)
    }

    convenience public init(extendedGraphemeClusterLiteral value: StringLiteralType) {
        self.init(codeWord: value)
    }

    convenience public init(unicodeScalarLiteral value: StringLiteralType) {
        self.init(codeWord: value)
    }

}

extension CodeWordCollection: ExpressibleByArrayLiteral {

    convenience public init(arrayLiteral elements: String...) {
        self.init(codeWords: elements)
    }
    
}
