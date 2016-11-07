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
        let spelling = self.speller.spell(phrase: "Bagpipe", withAlphabet: Alphabet.InternationalRadiotelephony)

        XCTAssertNotNil(spelling)
    }

    func testSpellingAllLetters() {
        let word = "Bagpipe"
        let spelling = self.speller.spell(phrase: word, withAlphabet: Alphabet.InternationalRadiotelephony)

        XCTAssertEqual(spelling.count, word.characters.count)
    }

}
