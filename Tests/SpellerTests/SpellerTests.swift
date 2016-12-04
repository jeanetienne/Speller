//
//  SpellerTests.swift
//  Speller
//
//  Created by Jean-Étienne on 8/11/16.
//  Copyright © 2016 Jean-Étienne. All rights reserved.
//

import XCTest

class SpellerTests: XCTestCase {

    let speller = Speller()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSpellingWorks() {
        let spelling = self.speller.spell(phrase: "Bagpipe", withSpellingAlphabet: SpellingAlphabet.InternationalRadiotelephony)

        XCTAssertNotNil(spelling)
    }

    func testSpellingAllLetters() {
        let word = "Bagpipe"
        let spelling = self.speller.spell(phrase: word, withSpellingAlphabet: SpellingAlphabet.InternationalRadiotelephony)

        XCTAssertEqual(spelling.count, word.characters.count)
    }
    
    func testSpellingAllLettersAccurately() {
        let phrase = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let spelling = self.speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.InternationalRadiotelephony)
        let control = [SpelledCharacter.Match("a", "Alfa"),
                       SpelledCharacter.Match("b", "Bravo"),
                       SpelledCharacter.Match("c", "Charlie"),
                       SpelledCharacter.Match("d", "Delta"),
                       SpelledCharacter.Match("e", "Echo"),
                       SpelledCharacter.Match("f", "Foxtrot"),
                       SpelledCharacter.Match("g", "Golf"),
                       SpelledCharacter.Match("h", "Hotel"),
                       SpelledCharacter.Match("i", "India"),
                       SpelledCharacter.Match("j", "Juliett"),
                       SpelledCharacter.Match("k", "Kilo"),
                       SpelledCharacter.Match("l", "Lima"),
                       SpelledCharacter.Match("m", "Mike"),
                       SpelledCharacter.Match("n", "November"),
                       SpelledCharacter.Match("o", "Oscar"),
                       SpelledCharacter.Match("p", "Papa"),
                       SpelledCharacter.Match("q", "Quebec"),
                       SpelledCharacter.Match("r", "Romeo"),
                       SpelledCharacter.Match("s", "Sierra"),
                       SpelledCharacter.Match("t", "Tango"),
                       SpelledCharacter.Match("u", "Uniform"),
                       SpelledCharacter.Match("v", "Victor"),
                       SpelledCharacter.Match("w", "Whiskey"),
                       SpelledCharacter.Match("x", "X-ray"),
                       SpelledCharacter.Match("y", "Yankee"),
                       SpelledCharacter.Match("z", "Zulu"),
                       SpelledCharacter.Match("A", "Alfa"),
                       SpelledCharacter.Match("B", "Bravo"),
                       SpelledCharacter.Match("C", "Charlie"),
                       SpelledCharacter.Match("D", "Delta"),
                       SpelledCharacter.Match("E", "Echo"),
                       SpelledCharacter.Match("F", "Foxtrot"),
                       SpelledCharacter.Match("G", "Golf"),
                       SpelledCharacter.Match("H", "Hotel"),
                       SpelledCharacter.Match("I", "India"),
                       SpelledCharacter.Match("J", "Juliett"),
                       SpelledCharacter.Match("K", "Kilo"),
                       SpelledCharacter.Match("L", "Lima"),
                       SpelledCharacter.Match("M", "Mike"),
                       SpelledCharacter.Match("N", "November"),
                       SpelledCharacter.Match("O", "Oscar"),
                       SpelledCharacter.Match("P", "Papa"),
                       SpelledCharacter.Match("Q", "Quebec"),
                       SpelledCharacter.Match("R", "Romeo"),
                       SpelledCharacter.Match("S", "Sierra"),
                       SpelledCharacter.Match("T", "Tango"),
                       SpelledCharacter.Match("U", "Uniform"),
                       SpelledCharacter.Match("V", "Victor"),
                       SpelledCharacter.Match("W", "Whiskey"),
                       SpelledCharacter.Match("X", "X-ray"),
                       SpelledCharacter.Match("Y", "Yankee"),
                       SpelledCharacter.Match("Z", "Zulu")]

        XCTAssertEqual(spelling, control, "Spelling the latin alphabet with the International Radiotelephoney spelling alphabet has failed")
    }

    func testSpellingWithFallbackAlphabets() {
        let phrase = "~!@#$%^&*()_+"
        let spelling = self.speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.InternationalRadiotelephony)
        let control = [SpelledCharacter.Match("~", "Tilde"),
                       SpelledCharacter.Match("!", "Exclamation mark"),
                       SpelledCharacter.Match("@", "At sign"),
                       SpelledCharacter.Match("#", ["Number sign", "Hashtag", "Octothorpe", "Sharp"]),
                       SpelledCharacter.Match("$", "Dollar sign"),
                       SpelledCharacter.Match("%", "Percent sign"),
                       SpelledCharacter.Match("^", "Circumflex accent"),
                       SpelledCharacter.Match("&", "Ampersand"),
                       SpelledCharacter.Match("*", "Asterisk"),
                       SpelledCharacter.Match("(", "Left parenthesis"),
                       SpelledCharacter.Match(")", "Right parenthesis"),
                       SpelledCharacter.Match("_", ["Underscore", "Low line"]),
                       SpelledCharacter.Match("+", "Plus sign")]

        XCTAssertEqual(spelling, control, "Spelling unknown characters with the International Radiotelephoney spelling alphabet and using fallback alphabets has failed")
    }

}
