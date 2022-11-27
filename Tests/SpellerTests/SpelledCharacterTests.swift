//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import XCTest
@testable import Speller

class SpelledCharacterTests: XCTestCase {
    
    func testEqualMatch() {
        let alphaOne = SpelledCharacter(character: "A", position: 0, spellingResult: .match("Alpha"))
        let alphaTwo = SpelledCharacter(character: "A", position: 0, spellingResult: .match("Alpha"))

        XCTAssertEqual(alphaOne, alphaTwo)
    }
    
    func testUnequalMatch() {
        let alphaOne = SpelledCharacter(character: "A", position: 0, spellingResult: .match("Alpha"))
        let bravoOne = SpelledCharacter(character: "B", position: 0, spellingResult: .match("Bravo"))

        XCTAssertNotEqual(alphaOne, bravoOne)
    }

    func testEqualDescription() {
        let redCarOne = SpelledCharacter(character: "🚘", position: 0, spellingResult: .basicDescription("Red car"))
        let redCarTwo = SpelledCharacter(character: "🚘", position: 0, spellingResult: .basicDescription("Red car"))

        XCTAssertEqual(redCarOne, redCarTwo)
    }

    func testUnequalDescription() {
        let carOne = SpelledCharacter(character: "🚘", position: 0, spellingResult: .basicDescription("Red car"))
        let cabTwo = SpelledCharacter(character: "🚖", position: 0, spellingResult: .basicDescription("Yellow cab"))

        XCTAssertNotEqual(carOne, cabTwo)
    }
    
    func testEqualUnknown() {
        let unknownOne = SpelledCharacter(character: "Â", position: 0, spellingResult: .unknown)
        let unknownTwo = SpelledCharacter(character: "Â", position: 0, spellingResult: .unknown)

        XCTAssertEqual(unknownOne, unknownTwo)
    }

    func testUnequalUnknown() {
        let unknownOne = SpelledCharacter(character: "Ē", position: 0, spellingResult: .unknown)
        let unknownTwo = SpelledCharacter(character: "Â", position: 0, spellingResult: .unknown)

        XCTAssertNotEqual(unknownOne, unknownTwo)
    }

    func testUnequalDifferentCases() {
        let alphaOne = SpelledCharacter(character: "A", position: 0, spellingResult: .match("Alpha"))
        let redCarOne = SpelledCharacter(character: "🚘", position: 0, spellingResult: .basicDescription("Red car"))
        let unknownOne = SpelledCharacter(character: "Â", position: 0, spellingResult: .unknown)

        XCTAssertNotEqual(alphaOne, redCarOne)
        XCTAssertNotEqual(unknownOne, redCarOne)
        XCTAssertNotEqual(alphaOne, unknownOne)
    }

}
