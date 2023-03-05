//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import XCTest
@testable import Speller

class SpellerTests: XCTestCase {

    func testSpellingWorks() {
        let spelling = Speller.spell(phrase: "Bagpipe", withSpellingAlphabet: SpellingAlphabet.internationalRadiotelephony, useSpellingAlphabetNumbers: true)

        XCTAssertNotNil(spelling)
    }

    func testSpellingAllLetters() {
        let word = "Bagpipe"
        let spelling = Speller.spell(phrase: word, withSpellingAlphabet: SpellingAlphabet.internationalRadiotelephony, useSpellingAlphabetNumbers: true)

        XCTAssertEqual(spelling.count, word.count)
    }

    func testSpellingAllLettersAccuratelyWithInternationalRadiotelephony() {
        let phrase = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.internationalRadiotelephony, useSpellingAlphabetNumbers: true)
        let control = [SpelledCharacter(character: "a", position: 0, spellingResult: .match("Alfa")),
                       SpelledCharacter(character: "b", position: 0, spellingResult: .match("Bravo")),
                       SpelledCharacter(character: "c", position: 0, spellingResult: .match("Charlie")),
                       SpelledCharacter(character: "d", position: 0, spellingResult: .match("Delta")),
                       SpelledCharacter(character: "e", position: 0, spellingResult: .match("Echo")),
                       SpelledCharacter(character: "f", position: 0, spellingResult: .match("Foxtrot")),
                       SpelledCharacter(character: "g", position: 0, spellingResult: .match("Golf")),
                       SpelledCharacter(character: "h", position: 0, spellingResult: .match("Hotel")),
                       SpelledCharacter(character: "i", position: 0, spellingResult: .match("India")),
                       SpelledCharacter(character: "j", position: 0, spellingResult: .match("Juliett")),
                       SpelledCharacter(character: "k", position: 0, spellingResult: .match("Kilo")),
                       SpelledCharacter(character: "l", position: 0, spellingResult: .match("Lima")),
                       SpelledCharacter(character: "m", position: 0, spellingResult: .match("Mike")),
                       SpelledCharacter(character: "n", position: 0, spellingResult: .match("November")),
                       SpelledCharacter(character: "o", position: 0, spellingResult: .match("Oscar")),
                       SpelledCharacter(character: "p", position: 0, spellingResult: .match("Papa")),
                       SpelledCharacter(character: "q", position: 0, spellingResult: .match("Quebec")),
                       SpelledCharacter(character: "r", position: 0, spellingResult: .match("Romeo")),
                       SpelledCharacter(character: "s", position: 0, spellingResult: .match("Sierra")),
                       SpelledCharacter(character: "t", position: 0, spellingResult: .match("Tango")),
                       SpelledCharacter(character: "u", position: 0, spellingResult: .match("Uniform")),
                       SpelledCharacter(character: "v", position: 0, spellingResult: .match("Victor")),
                       SpelledCharacter(character: "w", position: 0, spellingResult: .match("Whiskey")),
                       SpelledCharacter(character: "x", position: 0, spellingResult: .match("X-ray")),
                       SpelledCharacter(character: "y", position: 0, spellingResult: .match("Yankee")),
                       SpelledCharacter(character: "z", position: 0, spellingResult: .match("Zulu")),
                       SpelledCharacter(character: "A", position: 0, spellingResult: .match("Alfa")),
                       SpelledCharacter(character: "B", position: 0, spellingResult: .match("Bravo")),
                       SpelledCharacter(character: "C", position: 0, spellingResult: .match("Charlie")),
                       SpelledCharacter(character: "D", position: 0, spellingResult: .match("Delta")),
                       SpelledCharacter(character: "E", position: 0, spellingResult: .match("Echo")),
                       SpelledCharacter(character: "F", position: 0, spellingResult: .match("Foxtrot")),
                       SpelledCharacter(character: "G", position: 0, spellingResult: .match("Golf")),
                       SpelledCharacter(character: "H", position: 0, spellingResult: .match("Hotel")),
                       SpelledCharacter(character: "I", position: 0, spellingResult: .match("India")),
                       SpelledCharacter(character: "J", position: 0, spellingResult: .match("Juliett")),
                       SpelledCharacter(character: "K", position: 0, spellingResult: .match("Kilo")),
                       SpelledCharacter(character: "L", position: 0, spellingResult: .match("Lima")),
                       SpelledCharacter(character: "M", position: 0, spellingResult: .match("Mike")),
                       SpelledCharacter(character: "N", position: 0, spellingResult: .match("November")),
                       SpelledCharacter(character: "O", position: 0, spellingResult: .match("Oscar")),
                       SpelledCharacter(character: "P", position: 0, spellingResult: .match("Papa")),
                       SpelledCharacter(character: "Q", position: 0, spellingResult: .match("Quebec")),
                       SpelledCharacter(character: "R", position: 0, spellingResult: .match("Romeo")),
                       SpelledCharacter(character: "S", position: 0, spellingResult: .match("Sierra")),
                       SpelledCharacter(character: "T", position: 0, spellingResult: .match("Tango")),
                       SpelledCharacter(character: "U", position: 0, spellingResult: .match("Uniform")),
                       SpelledCharacter(character: "V", position: 0, spellingResult: .match("Victor")),
                       SpelledCharacter(character: "W", position: 0, spellingResult: .match("Whiskey")),
                       SpelledCharacter(character: "X", position: 0, spellingResult: .match("X-ray")),
                       SpelledCharacter(character: "Y", position: 0, spellingResult: .match("Yankee")),
                       SpelledCharacter(character: "Z", position: 0, spellingResult: .match("Zulu"))
        ]

        XCTAssertEqual(spelling, control, "Spelling the latin alphabet with the International Radiotelephony spelling alphabet has failed")
    }

    func testSpellingWithInternationalRadiotelephonyWithNumbers() {
        let phrase = "ABCD1234567890"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.internationalRadiotelephony, useSpellingAlphabetNumbers: true)
        let control = [SpelledCharacter(character: "A", position: 0, spellingResult: .match("Alfa")),
                       SpelledCharacter(character: "B", position: 0, spellingResult: .match("Bravo")),
                       SpelledCharacter(character: "C", position: 0, spellingResult: .match("Charlie")),
                       SpelledCharacter(character: "D", position: 0, spellingResult: .match("Delta")),
                       SpelledCharacter(character: "1", position: 0, spellingResult: .match("Unaone")),
                       SpelledCharacter(character: "2", position: 0, spellingResult: .match("Bissotwo")),
                       SpelledCharacter(character: "3", position: 0, spellingResult: .match("Terrathree")),
                       SpelledCharacter(character: "4", position: 0, spellingResult: .match("Kartefour")),
                       SpelledCharacter(character: "5", position: 0, spellingResult: .match("Pantafive")),
                       SpelledCharacter(character: "6", position: 0, spellingResult: .match("Soxisix")),
                       SpelledCharacter(character: "7", position: 0, spellingResult: .match("Setteseven")),
                       SpelledCharacter(character: "8", position: 0, spellingResult: .match("Oktoeight")),
                       SpelledCharacter(character: "9", position: 0, spellingResult: .match("Novenine")),
                       SpelledCharacter(character: "0", position: 0, spellingResult: .match("Nadazero"))
        ]

        XCTAssertEqual(spelling, control, "Spelling numbers with the International Radiotelephony spelling alphabet has failed")
    }

    func testSpellingWithInternationalRadiotelephonyWithoutNumbers() {
        let phrase = "ABCD1234567890"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.internationalRadiotelephony, useSpellingAlphabetNumbers: false)
        let control = [SpelledCharacter(character: "A", position: 0, spellingResult: .match("Alfa")),
                       SpelledCharacter(character: "B", position: 0, spellingResult: .match("Bravo")),
                       SpelledCharacter(character: "C", position: 0, spellingResult: .match("Charlie")),
                       SpelledCharacter(character: "D", position: 0, spellingResult: .match("Delta")),
                       SpelledCharacter(character: "1", position: 0, spellingResult: .basicDescription("Digit One")),
                       SpelledCharacter(character: "2", position: 0, spellingResult: .basicDescription("Digit Two")),
                       SpelledCharacter(character: "3", position: 0, spellingResult: .basicDescription("Digit Three")),
                       SpelledCharacter(character: "4", position: 0, spellingResult: .basicDescription("Digit Four")),
                       SpelledCharacter(character: "5", position: 0, spellingResult: .basicDescription("Digit Five")),
                       SpelledCharacter(character: "6", position: 0, spellingResult: .basicDescription("Digit Six")),
                       SpelledCharacter(character: "7", position: 0, spellingResult: .basicDescription("Digit Seven")),
                       SpelledCharacter(character: "8", position: 0, spellingResult: .basicDescription("Digit Eight")),
                       SpelledCharacter(character: "9", position: 0, spellingResult: .basicDescription("Digit Nine")),
                       SpelledCharacter(character: "0", position: 0, spellingResult: .basicDescription("Digit Zero"))
        ]

        XCTAssertEqual(spelling, control, "Spelling numbers with the International Radiotelephony spelling alphabet has failed")
    }

    func testSpellingCzech() {
        let phrase = "České Budějovice"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.czech, useSpellingAlphabetNumbers: true)
        let control = [
            SpelledCharacter(character: "Č", position: 0, spellingResult: .match("Cyril")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Emil")),
            SpelledCharacter(character: "s", position: 0, spellingResult: .match("Svatopluk")),
            SpelledCharacter(character: "k", position: 0, spellingResult: .match("Karel")),
            SpelledCharacter(character: "é", position: 0, spellingResult: .match("Emil")),
            SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
            SpelledCharacter(character: "B", position: 0, spellingResult: .match("Božena")),
            SpelledCharacter(character: "u", position: 0, spellingResult: .match("Urban")),
            SpelledCharacter(character: "d", position: 0, spellingResult: .match("David")),
            SpelledCharacter(character: "ě", position: 0, spellingResult: .match("Emil")),
            SpelledCharacter(character: "j", position: 0, spellingResult: .match("Josef")),
            SpelledCharacter(character: "o", position: 0, spellingResult: .match("Otakar")),
            SpelledCharacter(character: "v", position: 0, spellingResult: .match("Václav")),
            SpelledCharacter(character: "i", position: 0, spellingResult: .match("Ivan")),
            SpelledCharacter(character: "c", position: 0, spellingResult: .match("Cyril")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Emil"))
        ]

        XCTAssertEqual(spelling, control, "Czech spelling is wrong")
    }

    func testSpellingDanish() {
        let phrase = "ægir & sørenå"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.danish, useSpellingAlphabetNumbers: true)
        let control = [
            SpelledCharacter(character: "æ", position: 0, spellingResult: .match("Ægir")),
            SpelledCharacter(character: "g", position: 0, spellingResult: .match("Georg")),
            SpelledCharacter(character: "i", position: 0, spellingResult: .match("Ida")),
            SpelledCharacter(character: "r", position: 0, spellingResult: .match("Rasmus")),
            SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
            SpelledCharacter(character: "&", position: 0, spellingResult: .basicDescription("Ampersand")),
            SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
            SpelledCharacter(character: "s", position: 0, spellingResult: .match("Søren")),
            SpelledCharacter(character: "ø", position: 0, spellingResult: .match("Øresund")),
            SpelledCharacter(character: "r", position: 0, spellingResult: .match("Rasmus")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Erik")),
            SpelledCharacter(character: "n", position: 0, spellingResult: .match("Nikolaj")),
            SpelledCharacter(character: "å", position: 0, spellingResult: .match("Aase"))
        ]

        XCTAssertEqual(spelling, control, "Danish spelling is wrong")
    }

    func testSpellingDutch() {
        let phrase = "Rĳksmuseum"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.dutch, useSpellingAlphabetNumbers: true)
        let control = [
            SpelledCharacter(character: "R", position: 0, spellingResult: .match("Richard")),
            SpelledCharacter(character: "ĳ", position: 0, spellingResult: .match("Ĳmuiden")),
            SpelledCharacter(character: "k", position: 0, spellingResult: .match("Karel")),
            SpelledCharacter(character: "s", position: 0, spellingResult: .match("Simon")),
            SpelledCharacter(character: "m", position: 0, spellingResult: .match("Maria")),
            SpelledCharacter(character: "u", position: 0, spellingResult: .match("Utrecht")),
            SpelledCharacter(character: "s", position: 0, spellingResult: .match("Simon")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Eduard")),
            SpelledCharacter(character: "u", position: 0, spellingResult: .match("Utrecht")),
            SpelledCharacter(character: "m", position: 0, spellingResult: .match("Maria"))
        ]

        XCTAssertEqual(spelling, control, "Dutch spelling is wrong")
    }

    func testSpellingFinnish() {
        let phrase = "öå-äiti"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.finnish, useSpellingAlphabetNumbers: true)
        let control = [
            SpelledCharacter(character: "ö", position: 0, spellingResult: .match("Öljy")),
            SpelledCharacter(character: "å", position: 0, spellingResult: .match("Åke")),
            SpelledCharacter(character: "-", position: 0, spellingResult: .basicDescription("Hyphen-minus")),
            SpelledCharacter(character: "ä", position: 0, spellingResult: .match("Äiti")),
            SpelledCharacter(character: "i", position: 0, spellingResult: .match("Iivari")),
            SpelledCharacter(character: "t", position: 0, spellingResult: .match("Tyyne")),
            SpelledCharacter(character: "i", position: 0, spellingResult: .match("Iivari"))
        ]

        XCTAssertEqual(spelling, control, "Finnish spelling is wrong")
    }

    func testSpellingFrenchWithNumbers() {
        let phrase = "Montpellier1234567890"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.french, useSpellingAlphabetNumbers: true)
        let control = [
            SpelledCharacter(character: "M", position: 0, spellingResult: .match("Marcel")),
            SpelledCharacter(character: "o", position: 0, spellingResult: .match("Oscar")),
            SpelledCharacter(character: "n", position: 0, spellingResult: .match("Nicolas")),
            SpelledCharacter(character: "t", position: 0, spellingResult: .match("Thérèse")),
            SpelledCharacter(character: "p", position: 0, spellingResult: .match("Pierre")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Eugène")),
            SpelledCharacter(character: "l", position: 0, spellingResult: .match("Louis")),
            SpelledCharacter(character: "l", position: 0, spellingResult: .match("Louis")),
            SpelledCharacter(character: "i", position: 0, spellingResult: .match("Irma")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Eugène")),
            SpelledCharacter(character: "r", position: 0, spellingResult: .match("Raoul")),
            SpelledCharacter(character: "1", position: 0, spellingResult: .basicDescription("Digit One")),
            SpelledCharacter(character: "2", position: 0, spellingResult: .basicDescription("Digit Two")),
            SpelledCharacter(character: "3", position: 0, spellingResult: .basicDescription("Digit Three")),
            SpelledCharacter(character: "4", position: 0, spellingResult: .basicDescription("Digit Four")),
            SpelledCharacter(character: "5", position: 0, spellingResult: .basicDescription("Digit Five")),
            SpelledCharacter(character: "6", position: 0, spellingResult: .basicDescription("Digit Six")),
            SpelledCharacter(character: "7", position: 0, spellingResult: .basicDescription("Digit Seven")),
            SpelledCharacter(character: "8", position: 0, spellingResult: .basicDescription("Digit Eight")),
            SpelledCharacter(character: "9", position: 0, spellingResult: .basicDescription("Digit Nine")),
            SpelledCharacter(character: "0", position: 0, spellingResult: .basicDescription("Digit Zero"))

        ]

        XCTAssertEqual(spelling, control, "French spelling is wrong")
    }

    func testSpellingFrenchWithoutNumbers() {
        let phrase = "Montpellier1234567890"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.french, useSpellingAlphabetNumbers: false)
        let control = [
            SpelledCharacter(character: "M", position: 0, spellingResult: .match("Marcel")),
            SpelledCharacter(character: "o", position: 0, spellingResult: .match("Oscar")),
            SpelledCharacter(character: "n", position: 0, spellingResult: .match("Nicolas")),
            SpelledCharacter(character: "t", position: 0, spellingResult: .match("Thérèse")),
            SpelledCharacter(character: "p", position: 0, spellingResult: .match("Pierre")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Eugène")),
            SpelledCharacter(character: "l", position: 0, spellingResult: .match("Louis")),
            SpelledCharacter(character: "l", position: 0, spellingResult: .match("Louis")),
            SpelledCharacter(character: "i", position: 0, spellingResult: .match("Irma")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Eugène")),
            SpelledCharacter(character: "r", position: 0, spellingResult: .match("Raoul")),
            SpelledCharacter(character: "1", position: 0, spellingResult: .basicDescription("Digit One")),
            SpelledCharacter(character: "2", position: 0, spellingResult: .basicDescription("Digit Two")),
            SpelledCharacter(character: "3", position: 0, spellingResult: .basicDescription("Digit Three")),
            SpelledCharacter(character: "4", position: 0, spellingResult: .basicDescription("Digit Four")),
            SpelledCharacter(character: "5", position: 0, spellingResult: .basicDescription("Digit Five")),
            SpelledCharacter(character: "6", position: 0, spellingResult: .basicDescription("Digit Six")),
            SpelledCharacter(character: "7", position: 0, spellingResult: .basicDescription("Digit Seven")),
            SpelledCharacter(character: "8", position: 0, spellingResult: .basicDescription("Digit Eight")),
            SpelledCharacter(character: "9", position: 0, spellingResult: .basicDescription("Digit Nine")),
            SpelledCharacter(character: "0", position: 0, spellingResult: .basicDescription("Digit Zero"))
        ]

        // The expectation is that with or without numbers, the spelling is the same since the French spelling alphabet doesn't have numbers.
        XCTAssertEqual(spelling, control, "French spelling is wrong")
    }

    func testSpellingGerman() {
        let phrase = "Möbelträgerfüße"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.german, useSpellingAlphabetNumbers: true)
        let control = [
            SpelledCharacter(character: "M", position: 0, spellingResult: .match("Martha")),
            SpelledCharacter(character: "ö", position: 0, spellingResult: .match("Ökonom")),
            SpelledCharacter(character: "b", position: 0, spellingResult: .match("Berta")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Emil")),
            SpelledCharacter(character: "l", position: 0, spellingResult: .match("Ludwig")),
            SpelledCharacter(character: "t", position: 0, spellingResult: .match("Theodor")),
            SpelledCharacter(character: "r", position: 0, spellingResult: .match("Richard")),
            SpelledCharacter(character: "ä", position: 0, spellingResult: .match("Ärger")),
            SpelledCharacter(character: "g", position: 0, spellingResult: .match("Gustav")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Emil")),
            SpelledCharacter(character: "r", position: 0, spellingResult: .match("Richard")),
            SpelledCharacter(character: "f", position: 0, spellingResult: .match("Friedrich")),
            SpelledCharacter(character: "ü", position: 0, spellingResult: .match(["Übermut", "Übel"])),
            SpelledCharacter(character: "ß", position: 0, spellingResult: .match("Eszett")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Emil"))
        ]

        XCTAssertEqual(spelling, control, "German spelling is wrong")
    }

    func testSpellingGermanInFinnish() {
        let phrase = "Möbelträgerfüße"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.finnish, useSpellingAlphabetNumbers: true)
        let control = [
            SpelledCharacter(character: "M", position: 0, spellingResult: .match("Matti")),
            SpelledCharacter(character: "ö", position: 0, spellingResult: .match("Öljy")),
            SpelledCharacter(character: "b", position: 0, spellingResult: .match("Bertta")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Eemeli")),
            SpelledCharacter(character: "l", position: 0, spellingResult: .match("Lauri")),
            SpelledCharacter(character: "t", position: 0, spellingResult: .match("Tyyne")),
            SpelledCharacter(character: "r", position: 0, spellingResult: .match("Risto")),
            SpelledCharacter(character: "ä", position: 0, spellingResult: .match("Äiti")),
            SpelledCharacter(character: "g", position: 0, spellingResult: .match("Gideon")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Eemeli")),
            SpelledCharacter(character: "r", position: 0, spellingResult: .match("Risto")),
            SpelledCharacter(character: "f", position: 0, spellingResult: .match("Faarao")),
            SpelledCharacter(character: "ü", position: 0, spellingResult: .match("Urho")),
            SpelledCharacter(character: "ß", position: 0, spellingResult: .basicDescription("Latin small letter sharp S")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Eemeli"))
        ]

        XCTAssertEqual(spelling, control, "Finnish spelling of German word is wrong")
    }

    func testSpellingItalian() {
        let phrase = "Xilofono"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.italian, useSpellingAlphabetNumbers: true)
        let control = [
            SpelledCharacter(character: "X", position: 0, spellingResult: .match(["Xeres", "Xilofono"])),
            SpelledCharacter(character: "i", position: 0, spellingResult: .match("Imola")),
            SpelledCharacter(character: "l", position: 0, spellingResult: .match("Livorno")),
            SpelledCharacter(character: "o", position: 0, spellingResult: .match("Otranto")),
            SpelledCharacter(character: "f", position: 0, spellingResult: .match("Firenze")),
            SpelledCharacter(character: "o", position: 0, spellingResult: .match("Otranto")),
            SpelledCharacter(character: "n", position: 0, spellingResult: .match("Napoli")),
            SpelledCharacter(character: "o", position: 0, spellingResult: .match("Otranto"))
        ]

        XCTAssertEqual(spelling, control, "Italian spelling is wrong")
    }

    func testSpellingNorwegian() {
        let phrase = "åse, ærlig & østen"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.norwegian, useSpellingAlphabetNumbers: true)
        let control = [
            SpelledCharacter(character: "å", position: 0, spellingResult: .match("Åse")),
            SpelledCharacter(character: "s", position: 0, spellingResult: .match("Sigrid")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Edith")),
            SpelledCharacter(character: ",", position: 0, spellingResult: .basicDescription("Comma")),
            SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
            SpelledCharacter(character: "æ", position: 0, spellingResult: .match("Ærlig")),
            SpelledCharacter(character: "r", position: 0, spellingResult: .match("Rikard")),
            SpelledCharacter(character: "l", position: 0, spellingResult: .match("Ludvig")),
            SpelledCharacter(character: "i", position: 0, spellingResult: .match("Ivar")),
            SpelledCharacter(character: "g", position: 0, spellingResult: .match("Gustav")),
            SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
            SpelledCharacter(character: "&", position: 0, spellingResult: .basicDescription("Ampersand")),
            SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
            SpelledCharacter(character: "ø", position: 0, spellingResult: .match("Østen")),
            SpelledCharacter(character: "s", position: 0, spellingResult: .match("Sigrid")),
            SpelledCharacter(character: "t", position: 0, spellingResult: .match("Teodor")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Edith")),
            SpelledCharacter(character: "n", position: 0, spellingResult: .match("Nils"))
        ]

        XCTAssertEqual(spelling, control, "Norwegian spelling is wrong")
    }

    func testSpellingPortuguesePortugal() {
        let phrase = "Lisboa"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.portuguesePortugal, useSpellingAlphabetNumbers: true)
        let control = [
            SpelledCharacter(character: "L", position: 0, spellingResult: .match("Lisboa")),
            SpelledCharacter(character: "i", position: 0, spellingResult: .match("Itália")),
            SpelledCharacter(character: "s", position: 0, spellingResult: .match("Setúbal")),
            SpelledCharacter(character: "b", position: 0, spellingResult: .match("Braga")),
            SpelledCharacter(character: "o", position: 0, spellingResult: .match("Ovar")),
            SpelledCharacter(character: "a", position: 0, spellingResult: .match("Aveiro"))
        ]

        XCTAssertEqual(spelling, control, "Portuguese spelling is wrong")
    }

    func testSpellingPortugueseBrazil() {
        let phrase = "Rio de Janeiro"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.portugueseBrazil, useSpellingAlphabetNumbers: true)
        let control = [
            SpelledCharacter(character: "R", position: 0, spellingResult: .match("Raiz")),
            SpelledCharacter(character: "i", position: 0, spellingResult: .match("Índio")),
            SpelledCharacter(character: "o", position: 0, spellingResult: .match("Ouro")),
            SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
            SpelledCharacter(character: "d", position: 0, spellingResult: .match("Dado")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Estrela")),
            SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
            SpelledCharacter(character: "J", position: 0, spellingResult: .match("José")),
            SpelledCharacter(character: "a", position: 0, spellingResult: .match("Amor")),
            SpelledCharacter(character: "n", position: 0, spellingResult: .match("Navio")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Estrela")),
            SpelledCharacter(character: "i", position: 0, spellingResult: .match("Índio")),
            SpelledCharacter(character: "r", position: 0, spellingResult: .match("Raiz")),
            SpelledCharacter(character: "o", position: 0, spellingResult: .match("Ouro"))
        ]

        XCTAssertEqual(spelling, control, "Portuguese (Brazilian) spelling is wrong")
    }

    func testSpellingSlovene() {
        let phrase = "Ajdovščina & Tržič"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.slovene, useSpellingAlphabetNumbers: true)
        let control = [
            SpelledCharacter(character: "A", position: 0, spellingResult: .match("Ankaran")),
            SpelledCharacter(character: "j", position: 0, spellingResult: .match("Jadran")),
            SpelledCharacter(character: "d", position: 0, spellingResult: .match("Drava")),
            SpelledCharacter(character: "o", position: 0, spellingResult: .match("Ormož")),
            SpelledCharacter(character: "v", position: 0, spellingResult: .match("Velenje")),
            SpelledCharacter(character: "š", position: 0, spellingResult: .match("Šmarje")),
            SpelledCharacter(character: "č", position: 0, spellingResult: .match("Čatež")),
            SpelledCharacter(character: "i", position: 0, spellingResult: .match("Izola")),
            SpelledCharacter(character: "n", position: 0, spellingResult: .match("Nanos")),
            SpelledCharacter(character: "a", position: 0, spellingResult: .match("Ankaran")),
            SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
            SpelledCharacter(character: "&", position: 0, spellingResult: .basicDescription("Ampersand")),
            SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
            SpelledCharacter(character: "T", position: 0, spellingResult: .match("Triglav")),
            SpelledCharacter(character: "r", position: 0, spellingResult: .match("Ravne")),
            SpelledCharacter(character: "ž", position: 0, spellingResult: .match("Žalec")),
            SpelledCharacter(character: "i", position: 0, spellingResult: .match("Izola")),
            SpelledCharacter(character: "č", position: 0, spellingResult: .match("Čatež")),
        ]

        XCTAssertEqual(spelling, control, "Slovene spelling is wrong")
    }

    func testSpellingSpanish() {
        let phrase = "Bañar"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.spanish, useSpellingAlphabetNumbers: true)
        let control = [
            SpelledCharacter(character: "B", position: 0, spellingResult: .match("Burgos")),
            SpelledCharacter(character: "a", position: 0, spellingResult: .match("Antonio")),
            SpelledCharacter(character: "ñ", position: 0, spellingResult: .match("Ñoño")),
            SpelledCharacter(character: "a", position: 0, spellingResult: .match("Antonio")),
            SpelledCharacter(character: "r", position: 0, spellingResult: .match("Ramón"))
        ]

        XCTAssertEqual(spelling, control, "Spanish spelling is wrong")
    }

    func testSpellingSwedish() {
        let phrase = "Åmål, Höganäs & übel"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.swedish, useSpellingAlphabetNumbers: true)
        let control = [
            SpelledCharacter(character: "Å", position: 0, spellingResult: .match("Åke")),
            SpelledCharacter(character: "m", position: 0, spellingResult: .match("Martin")),
            SpelledCharacter(character: "å", position: 0, spellingResult: .match("Åke")),
            SpelledCharacter(character: "l", position: 0, spellingResult: .match("Ludvig")),
            SpelledCharacter(character: ",", position: 0, spellingResult: .basicDescription("Comma")),
            SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
            SpelledCharacter(character: "H", position: 0, spellingResult: .match("Helge")),
            SpelledCharacter(character: "ö", position: 0, spellingResult: .match("Östen")),
            SpelledCharacter(character: "g", position: 0, spellingResult: .match("Gustav")),
            SpelledCharacter(character: "a", position: 0, spellingResult: .match("Adam")),
            SpelledCharacter(character: "n", position: 0, spellingResult: .match("Niklas")),
            SpelledCharacter(character: "ä", position: 0, spellingResult: .match("Ärlig")),
            SpelledCharacter(character: "s", position: 0, spellingResult: .match("Sigurd")),
            SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
            SpelledCharacter(character: "&", position: 0, spellingResult: .basicDescription("Ampersand")),
            SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
            SpelledCharacter(character: "ü", position: 0, spellingResult: .match("Übel")),
            SpelledCharacter(character: "b", position: 0, spellingResult: .match("Bertil")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Erik")),
            SpelledCharacter(character: "l", position: 0, spellingResult: .match("Ludvig"))
        ]

        XCTAssertEqual(spelling, control, "Swedish spelling is wrong")
    }

    func testSpellingTurkish() {
        let phrase = "Istanbul, Elâzığ, Uşak, İnegöl, Düziçi"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.turkish, useSpellingAlphabetNumbers: true)
        let control = [
            SpelledCharacter(character: "I", position: 0, spellingResult: .match("Isparta")),
            SpelledCharacter(character: "s", position: 0, spellingResult: .match("Sinop")),
            SpelledCharacter(character: "t", position: 0, spellingResult: .match("Tokat")),
            SpelledCharacter(character: "a", position: 0, spellingResult: .match("Adana")),
            SpelledCharacter(character: "n", position: 0, spellingResult: .match("Niğde")),
            SpelledCharacter(character: "b", position: 0, spellingResult: .match("Bolu")),
            SpelledCharacter(character: "u", position: 0, spellingResult: .match("Uşak")),
            SpelledCharacter(character: "l", position: 0, spellingResult: .match("Lüleburgaz")),
            SpelledCharacter(character: ",", position: 0, spellingResult: .basicDescription("Comma")),
            SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
            SpelledCharacter(character: "E", position: 0, spellingResult: .match("Edirne")),
            SpelledCharacter(character: "l", position: 0, spellingResult: .match("Lüleburgaz")),
            SpelledCharacter(character: "â", position: 0, spellingResult: .match("Adana")),
            SpelledCharacter(character: "z", position: 0, spellingResult: .match("Zonguldak")),
            SpelledCharacter(character: "ı", position: 0, spellingResult: .match("Isparta")),
            SpelledCharacter(character: "ğ", position: 0, spellingResult: .match("Yumuşak G")),
            SpelledCharacter(character: ",", position: 0, spellingResult: .basicDescription("Comma")),
            SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
            SpelledCharacter(character: "U", position: 0, spellingResult: .match("Uşak")),
            SpelledCharacter(character: "ş", position: 0, spellingResult: .match("Şırnak")),
            SpelledCharacter(character: "a", position: 0, spellingResult: .match("Adana")),
            SpelledCharacter(character: "k", position: 0, spellingResult: .match("Kars")),
            SpelledCharacter(character: ",", position: 0, spellingResult: .basicDescription("Comma")),
            SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
            SpelledCharacter(character: "İ", position: 0, spellingResult: .match("İzmir")),
            SpelledCharacter(character: "n", position: 0, spellingResult: .match("Niğde")),
            SpelledCharacter(character: "e", position: 0, spellingResult: .match("Edirne")),
            SpelledCharacter(character: "g", position: 0, spellingResult: .match("Giresun")),
            SpelledCharacter(character: "ö", position: 0, spellingResult: .match("Ödemiş")),
            SpelledCharacter(character: "l", position: 0, spellingResult: .match("Lüleburgaz")),
            SpelledCharacter(character: ",", position: 0, spellingResult: .basicDescription("Comma")),
            SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
            SpelledCharacter(character: "D", position: 0, spellingResult: .match("Denizli")),
            SpelledCharacter(character: "ü", position: 0, spellingResult: .match("Ünye")),
            SpelledCharacter(character: "z", position: 0, spellingResult: .match("Zonguldak")),
            SpelledCharacter(character: "i", position: 0, spellingResult: .match("Isparta")),
            SpelledCharacter(character: "ç", position: 0, spellingResult: .match("Çanakkale")),
            SpelledCharacter(character: "i", position: 0, spellingResult: .match("Isparta"))
        ]

        XCTAssertEqual(spelling, control, "Turkish spelling is wrong")
    }

    func testSpellingPGPWordList() {
        let phrase = "e582 94f2 e9a2 2748 6e8b"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.pgpWordList, useSpellingAlphabetNumbers: true)
        let control = [
            SpelledCharacter(character: "E5", position: 0, spellingResult: .match( "topmost")),
            SpelledCharacter(character: "82", position: 0, spellingResult: .match( "Istanbul")),
            SpelledCharacter(character: "94", position: 0, spellingResult: .match( "Pluto")),
            SpelledCharacter(character: "F2", position: 0, spellingResult: .match( "vagabond")),
            SpelledCharacter(character: "E9", position: 0, spellingResult: .match( "treadmill")),
            SpelledCharacter(character: "A2", position: 0, spellingResult: .match( "Pacific")),
            SpelledCharacter(character: "27", position: 0, spellingResult: .match( "brackish")),
            SpelledCharacter(character: "48", position: 0, spellingResult: .match( "dictator")),
            SpelledCharacter(character: "6E", position: 0, spellingResult: .match( "goldfish")),
            SpelledCharacter(character: "8B", position: 0, spellingResult: .match( "Medusa"))
        ]

        XCTAssertEqual(spelling, control, "PGP Word List spelling is wrong")
    }

    func testSpellingPGPWordListWithNoise() {
        let phrase = " Hiding e582 in 94f2 plain e9a2 sight  "
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.pgpWordList, useSpellingAlphabetNumbers: true)
        let control = [
            SpelledCharacter(character: "DE", position: 0, spellingResult: .match( "tactics")),
            SpelledCharacter(character: "58", position: 0, spellingResult: .match( "everyday")),
            SpelledCharacter(character: "29", position: 0, spellingResult: .match( "breakup")),
            SpelledCharacter(character: "4F", position: 0, spellingResult: .match( "document")),
            SpelledCharacter(character: "2A", position: 0, spellingResult: .match( "brickyard")),
            SpelledCharacter(character: "E9", position: 0, spellingResult: .match( "ultimate")),
            SpelledCharacter(character: "A2", position: 0, spellingResult: .match( "rebirth"))
        ]

        XCTAssertEqual(spelling, control, "PGP Word List spelling with noise is wrong")
    }

    func testDescribesUnknownCharacters() {
        let phrase = "ABC Duck: 🦆, Lizard: 🦎, Shark: 🦈, Family: 👩‍👩‍👧‍👧, Flag: 🇲🇲 !@#$%^&*()"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: SpellingAlphabet.internationalRadiotelephony, useSpellingAlphabetNumbers: true)

        let control = [SpelledCharacter(character: "A", position: 0, spellingResult: .match("Alfa")),
                       SpelledCharacter(character: "B", position: 0, spellingResult: .match("Bravo")),
                       SpelledCharacter(character: "C", position: 0, spellingResult: .match("Charlie")),
                       SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
                       SpelledCharacter(character: "D", position: 0, spellingResult: .match("Delta")),
                       SpelledCharacter(character: "u", position: 0, spellingResult: .match("Uniform")),
                       SpelledCharacter(character: "c", position: 0, spellingResult: .match("Charlie")),
                       SpelledCharacter(character: "k", position: 0, spellingResult: .match("Kilo")),
                       SpelledCharacter(character: ":", position: 0, spellingResult: .basicDescription("Colon")),
                       SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
                       SpelledCharacter(character: "🦆", position: 0, spellingResult: .basicDescription("Duck")),
                       SpelledCharacter(character: ",", position: 0, spellingResult: .basicDescription("Comma")),
                       SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
                       SpelledCharacter(character: "L", position: 0, spellingResult: .match("Lima")),
                       SpelledCharacter(character: "i", position: 0, spellingResult: .match("India")),
                       SpelledCharacter(character: "z", position: 0, spellingResult: .match("Zulu")),
                       SpelledCharacter(character: "a", position: 0, spellingResult: .match("Alfa")),
                       SpelledCharacter(character: "r", position: 0, spellingResult: .match("Romeo")),
                       SpelledCharacter(character: "d", position: 0, spellingResult: .match("Delta")),
                       SpelledCharacter(character: ":", position: 0, spellingResult: .basicDescription("Colon")),
                       SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
                       SpelledCharacter(character: "🦎", position: 0, spellingResult: .basicDescription("Lizard")),
                       SpelledCharacter(character: ",", position: 0, spellingResult: .basicDescription("Comma")),
                       SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
                       SpelledCharacter(character: "S", position: 0, spellingResult: .match("Sierra")),
                       SpelledCharacter(character: "h", position: 0, spellingResult: .match("Hotel")),
                       SpelledCharacter(character: "a", position: 0, spellingResult: .match("Alfa")),
                       SpelledCharacter(character: "r", position: 0, spellingResult: .match("Romeo")),
                       SpelledCharacter(character: "k", position: 0, spellingResult: .match("Kilo")),
                       SpelledCharacter(character: ":", position: 0, spellingResult: .basicDescription("Colon")),
                       SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
                       SpelledCharacter(character: "🦈", position: 0, spellingResult: .basicDescription("Shark")),
                       SpelledCharacter(character: ",", position: 0, spellingResult: .basicDescription("Comma")),
                       SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
                       SpelledCharacter(character: "F", position: 0, spellingResult: .match("Foxtrot")),
                       SpelledCharacter(character: "a", position: 0, spellingResult: .match("Alfa")),
                       SpelledCharacter(character: "m", position: 0, spellingResult: .match("Mike")),
                       SpelledCharacter(character: "i", position: 0, spellingResult: .match("India")),
                       SpelledCharacter(character: "l", position: 0, spellingResult: .match("Lima")),
                       SpelledCharacter(character: "y", position: 0, spellingResult: .match("Yankee")),
                       SpelledCharacter(character: ":", position: 0, spellingResult: .basicDescription("Colon")),
                       SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
                       SpelledCharacter(character: "👩‍👩‍👧‍👧", position: 0, spellingResult: .basicDescription("Family: woman, woman, girl, girl")),
                       SpelledCharacter(character: ",", position: 0, spellingResult: .basicDescription("Comma")),
                       SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
                       SpelledCharacter(character: "F", position: 0, spellingResult: .match("Foxtrot")),
                       SpelledCharacter(character: "l", position: 0, spellingResult: .match("Lima")),
                       SpelledCharacter(character: "a", position: 0, spellingResult: .match("Alfa")),
                       SpelledCharacter(character: "g", position: 0, spellingResult: .match("Golf")),
                       SpelledCharacter(character: ":", position: 0, spellingResult: .basicDescription("Colon")),
                       SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
                       SpelledCharacter(character: "🇲🇲", position: 0, spellingResult: .basicDescription("Flag: Myanmar (Burma)")),
                       SpelledCharacter(character: " ", position: 0, spellingResult: .basicDescription("Space")),
                       SpelledCharacter(character: "!", position: 0, spellingResult: .basicDescription("Exclamation mark")),
                       SpelledCharacter(character: "@", position: 0, spellingResult: .basicDescription("At sign")),
                       SpelledCharacter(character: "#", position: 0, spellingResult: .basicDescription("Number sign, Hashtag, Octothorpe, Sharp")),
                       SpelledCharacter(character: "$", position: 0, spellingResult: .basicDescription("Dollar sign")),
                       SpelledCharacter(character: "%", position: 0, spellingResult: .basicDescription("Percent sign")),
                       SpelledCharacter(character: "^", position: 0, spellingResult: .basicDescription("Circumflex accent")),
                       SpelledCharacter(character: "&", position: 0, spellingResult: .basicDescription("Ampersand")),
                       SpelledCharacter(character: "*", position: 0, spellingResult: .basicDescription("Asterisk")),
                       SpelledCharacter(character: "(", position: 0, spellingResult: .basicDescription("Left parenthesis")),
                       SpelledCharacter(character: ")", position: 0, spellingResult: .basicDescription("Right parenthesis"))
        ]

        XCTAssertEqual(spelling, control, "Spelling with description of unknown characters has failed")
    }

    func testPositionWorks() {
        let spelling = Speller.spell(phrase: "Bagpipe", withSpellingAlphabet: SpellingAlphabet.internationalRadiotelephony, useSpellingAlphabetNumbers: true)

        spelling.enumerated().forEach { enumerator in
            XCTAssertEqual(enumerator.element.position, enumerator.offset)
        }
    }

}
