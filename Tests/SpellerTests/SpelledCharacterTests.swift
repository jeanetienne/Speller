//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import XCTest
@testable import Speller

class SpelledCharacterTests: XCTestCase {
    
    func testEqualMatch() {
        let alphaOne = SpelledCharacter.Match("A", "Alpha")
        let alphaTwo = SpelledCharacter.Match("A", "Alpha")

        XCTAssertEqual(alphaOne, alphaTwo)
    }
    
    func testUnequalMatch() {
        let alphaOne = SpelledCharacter.Match("A", "Alpha")
        let bravoOne = SpelledCharacter.Match("B", "Bravo")

        XCTAssertNotEqual(alphaOne, bravoOne)
    }

    func testEqualDescription() {
        let redCarOne = SpelledCharacter.Description("🚘", "Red car")
        let redCarTwo = SpelledCharacter.Description("🚘", "Red car")

        XCTAssertEqual(redCarOne, redCarTwo)
    }

    func testUnequalDescription() {
        let carOne = SpelledCharacter.Description("🚘", "Red car")
        let cabTwo = SpelledCharacter.Description("🚖", "Yellow cab")

        XCTAssertNotEqual(carOne, cabTwo)
    }
    
    func testEqualUnknown() {
        let unknownOne = SpelledCharacter.Unknown("Â")
        let unknownTwo = SpelledCharacter.Unknown("Â")

        XCTAssertEqual(unknownOne, unknownTwo)
    }

    func testUnequalUnknown() {
        let unknownOne = SpelledCharacter.Unknown("Ē")
        let unknownTwo = SpelledCharacter.Unknown("Â")

        XCTAssertNotEqual(unknownOne, unknownTwo)
    }

    func testUnequalDifferentCases() {
        let alphaOne = SpelledCharacter.Match("A", "Alpha")
        let redCarOne = SpelledCharacter.Description("🚘", "Red car")
        let unknownOne = SpelledCharacter.Unknown("Â")

        XCTAssertNotEqual(alphaOne, redCarOne)
        XCTAssertNotEqual(unknownOne, redCarOne)
        XCTAssertNotEqual(alphaOne, unknownOne)
    }

}
