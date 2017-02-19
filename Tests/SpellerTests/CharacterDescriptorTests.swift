//
//  CharacterDescriptorTests.swift
//  Speller
//
//  Created by Jean-Étienne Parrot on 12/2/17.
//  Copyright © 2017 Speller. All rights reserved.
//

import XCTest

class CharacterDescriptorTests: XCTestCase {

    func testInitializerNotNil() {
        XCTAssertNotNil(CharacterDescriptor(.Emoji))
    }

    func testDescriptionClassicEmoji() {
        if let characters = CharacterDescriptor(.Emoji),
            let description = characters.description("😀") {
            XCTAssertEqual(description, "Grinning face")
        } else {
            XCTAssertTrue(false)
        }
    }

    func testDescriptionEmojiVersion4() {
        if let characters = CharacterDescriptor(.Emoji),
            let description = characters.description("🥑") {
            XCTAssertEqual(description, "Avocado")
        } else {
            XCTAssertTrue(false)
        }
    }

    func testDescriptionProfessionEmojiVersion4() {
        if let characters = CharacterDescriptor(.Emoji),
            let description = characters.description("👩🏽‍✈️") {
            XCTAssertEqual(description, "Woman pilot: medium skin tone")
        } else {
            XCTAssertTrue(false)
        }
    }

    func testDescriptionUnknownString() {
        if let characters = CharacterDescriptor(.Emoji) {
            XCTAssertNil(characters.description("ABC"))
        } else {
            XCTAssertTrue(false)
        }
    }

}
