//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import XCTest
@testable import Speller

class CharacterDescriptorTests: XCTestCase {

    func testInitializerNotNil() {
        XCTAssertNotNil(CharacterDescriptor(.emoji))
    }

    func testDescriptionClassicEmoji() {
        if let characters = CharacterDescriptor(.emoji),
            let description = characters.describe("😀") {
            XCTAssertEqual(description, "Grinning face")
        } else {
            XCTAssertTrue(false)
        }
    }

    func testDescriptionEmojiVersion4() {
        if let characters = CharacterDescriptor(.emoji),
            let description = characters.describe("🥑") {
            XCTAssertEqual(description, "Avocado")
        } else {
            XCTAssertTrue(false)
        }
    }

    func testDescriptionProfessionEmojiVersion4() {
        if let characters = CharacterDescriptor(.emoji),
            let description = characters.describe("👩🏽‍✈️") {
            XCTAssertEqual(description, "Woman pilot: medium skin tone")
        } else {
            XCTAssertTrue(false)
        }
    }

    func testDescriptionUnknownString() {
        if let characters = CharacterDescriptor(.emoji) {
            XCTAssertNil(characters.describe("ABC"))
        } else {
            XCTAssertTrue(false)
        }
    }

}
