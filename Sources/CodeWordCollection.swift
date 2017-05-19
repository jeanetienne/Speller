//
//  CodeWordCollection.swift
//  Speller
//
//  Created by Jean-Étienne on 13/11/16.
//  Copyright © 2016 Jean-Étienne. All rights reserved.
//

import Foundation

/// A `CodeWordCollection` represents a collection of all the code words 
/// matching a spelled character. Often the collection only contains one code 
/// word
public final class CodeWordCollection {

    /// The first code word of the collection
    public var mainCodeWord: String {
        return codeWords[0]
    }

    /// The other code words of the collection
    public var secondaryCodeWords: [String] {
        return Array(codeWords.dropFirst(1))
    }

    var codeWords: [String] = []

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

extension CodeWordCollection: CustomDebugStringConvertible {

    public var debugDescription: String {
        return codeWords.debugDescription
    }

}
