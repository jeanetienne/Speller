//
//  SpellerTests.swift
//  Speller
//
//  Created by Jean-Étienne on 8/11/16.
//  Copyright © 2016 Jean-Étienne. All rights reserved.
//

import XCTest

class SpellerTests: XCTestCase {

    func testSpellingWorks() {
        let spelling = Speller.spell(phrase: "Bagpipe", withSpellingAlphabet: .InternationalRadiotelephony)

        XCTAssertNotNil(spelling)
    }

    func testSpellingAllLetters() {
        let word = "Bagpipe"
        let spelling = Speller.spell(phrase: word, withSpellingAlphabet: .InternationalRadiotelephony)

        XCTAssertEqual(spelling.count, word.characters.count)
    }
    
    func testSpellingAllLettersAccuratelyWithInternationalRadiotelephony() {
        let phrase = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: .InternationalRadiotelephony)
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

    func testSpellingCzech() {
        let phrase = "České Budějovice"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: .Czech)
        let control = [
            SpelledCharacter.Match("Č", "Cyril"),
            SpelledCharacter.Match("e", "Emil"),
            SpelledCharacter.Match("s", "Svatopluk"),
            SpelledCharacter.Match("k", "Karel"),
            SpelledCharacter.Match("é", "Emil"),
            SpelledCharacter.Description(" ", "Space"),
            SpelledCharacter.Match("B", "Božena"),
            SpelledCharacter.Match("u", "Urban"),
            SpelledCharacter.Match("d", "David"),
            SpelledCharacter.Match("ě", "Emil"),
            SpelledCharacter.Match("j", "Josef"),
            SpelledCharacter.Match("o", "Otakar"),
            SpelledCharacter.Match("v", "Václav"),
            SpelledCharacter.Match("i", "Ivan"),
            SpelledCharacter.Match("c", "Cyril"),
            SpelledCharacter.Match("e", "Emil")
        ]

        XCTAssertEqual(spelling, control, "Czech spelling is wrong")
    }

    func testSpellingDanish() {
        let phrase = "ægir & sørenå"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: .Danish)
        let control = [
            SpelledCharacter.Match("æ", "Ægir"),
            SpelledCharacter.Match("g", "Georg"),
            SpelledCharacter.Match("i", "Ida"),
            SpelledCharacter.Match("r", "Rasmus"),
            SpelledCharacter.Description(" ", "Space"),
            SpelledCharacter.Description("&", "Ampersand"),
            SpelledCharacter.Description(" ", "Space"),
            SpelledCharacter.Match("s", "Søren"),
            SpelledCharacter.Match("ø", "Øresund"),
            SpelledCharacter.Match("r", "Rasmus"),
            SpelledCharacter.Match("e", "Erik"),
            SpelledCharacter.Match("n", "Nikolaj"),
            SpelledCharacter.Match("å", "Aase")
        ]

        XCTAssertEqual(spelling, control, "Danish spelling is wrong")
    }

    func testSpellingDutch() {
        let phrase = "Rĳksmuseum"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: .Dutch)
        let control = [
            SpelledCharacter.Match("R", "Richard"),
            SpelledCharacter.Match("ĳ", "Ĳmuiden"),
            SpelledCharacter.Match("k", "Karel"),
            SpelledCharacter.Match("s", "Simon"),
            SpelledCharacter.Match("m", "Maria"),
            SpelledCharacter.Match("u", "Utrecht"),
            SpelledCharacter.Match("s", "Simon"),
            SpelledCharacter.Match("e", "Eduard"),
            SpelledCharacter.Match("u", "Utrecht"),
            SpelledCharacter.Match("m", "Maria")
        ]

        XCTAssertEqual(spelling, control, "Dutch spelling is wrong")
    }

    func testSpellingFinnish() {
        let phrase = "öå-äiti"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: .Finnish)
        let control = [
            SpelledCharacter.Match("ö", "Öljy"),
            SpelledCharacter.Match("å", "Åke"),
            SpelledCharacter.Description("-", "Hyphen-minus"),
            SpelledCharacter.Match("ä", "Äiti"),
            SpelledCharacter.Match("i", "Iivari"),
            SpelledCharacter.Match("t", "Tyyne"),
            SpelledCharacter.Match("i", "Iivari")
        ]

        XCTAssertEqual(spelling, control, "Finnish spelling is wrong")
    }

    func testSpellingFrench() {
        let phrase = "Montpellier"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: .French)
        let control = [
            SpelledCharacter.Match("M", "Marcel"),
            SpelledCharacter.Match("o", "Oscar"),
            SpelledCharacter.Match("n", "Nicolas"),
            SpelledCharacter.Match("t", "Thérèse"),
            SpelledCharacter.Match("p", "Pierre"),
            SpelledCharacter.Match("e", "Eugène"),
            SpelledCharacter.Match("l", "Louis"),
            SpelledCharacter.Match("l", "Louis"),
            SpelledCharacter.Match("i", "Irma"),
            SpelledCharacter.Match("e", "Eugène"),
            SpelledCharacter.Match("r", "Raoul")
        ]

        XCTAssertEqual(spelling, control, "French spelling is wrong")
    }

    func testSpellingGerman() {
        let phrase = "Möbelträgerfüße"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: .German)
        let control = [
            SpelledCharacter.Match("M", "Martha"),
            SpelledCharacter.Match("ö", "Ökonom"),
            SpelledCharacter.Match("b", "Berta"),
            SpelledCharacter.Match("e", "Emil"),
            SpelledCharacter.Match("l", "Ludwig"),
            SpelledCharacter.Match("t", "Theodor"),
            SpelledCharacter.Match("r", "Richard"),
            SpelledCharacter.Match("ä", "Ärger"),
            SpelledCharacter.Match("g", "Gustav"),
            SpelledCharacter.Match("e", "Emil"),
            SpelledCharacter.Match("r", "Richard"),
            SpelledCharacter.Match("f", "Friedrich"),
            SpelledCharacter.Match("ü", ["Übermut", "Übel"]),
            SpelledCharacter.Match("ß", "Eszett"),
            SpelledCharacter.Match("e", "Emil")
        ]

        XCTAssertEqual(spelling, control, "German spelling is wrong")
    }
    
    func testSpellingGermanInFinnish() {
        let phrase = "Möbelträgerfüße"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: .Finnish)
        let control = [
            SpelledCharacter.Match("M", "Matti"),
            SpelledCharacter.Match("ö", "Öljy"),
            SpelledCharacter.Match("b", "Bertta"),
            SpelledCharacter.Match("e", "Eemeli"),
            SpelledCharacter.Match("l", "Lauri"),
            SpelledCharacter.Match("t", "Tyyne"),
            SpelledCharacter.Match("r", "Risto"),
            SpelledCharacter.Match("ä", "Äiti"),
            SpelledCharacter.Match("g", "Gideon"),
            SpelledCharacter.Match("e", "Eemeli"),
            SpelledCharacter.Match("r", "Risto"),
            SpelledCharacter.Match("f", "Faarao"),
            SpelledCharacter.Match("ü", "Urho"),
            SpelledCharacter.Description("ß", "Latin small letter sharp S"),
            SpelledCharacter.Match("e", "Eemeli")
        ]

        XCTAssertEqual(spelling, control, "Finnish spelling of German word is wrong")
    }
    
    func testSpellingItalian() {
        let phrase = "Xilofono"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: .Italian)
        let control = [
            SpelledCharacter.Match("X", ["Xeres", "Xilofono"]),
            SpelledCharacter.Match("i", "Imola"),
            SpelledCharacter.Match("l", "Livorno"),
            SpelledCharacter.Match("o", "Otranto"),
            SpelledCharacter.Match("f", "Firenze"),
            SpelledCharacter.Match("o", "Otranto"),
            SpelledCharacter.Match("n", "Napoli"),
            SpelledCharacter.Match("o", "Otranto")
        ]

        XCTAssertEqual(spelling, control, "Italian spelling is wrong")
    }

    func testSpellingNorwegian() {
        let phrase = "åse, ærlig & østen"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: .Norwegian)
        let control = [
            SpelledCharacter.Match("å", "Åse"),
            SpelledCharacter.Match("s", "Sigrid"),
            SpelledCharacter.Match("e", "Edith"),
            SpelledCharacter.Description(",", "Comma"),
            SpelledCharacter.Description(" ", "Space"),
            SpelledCharacter.Match("æ", "Ærlig"),
            SpelledCharacter.Match("r", "Rikard"),
            SpelledCharacter.Match("l", "Ludvig"),
            SpelledCharacter.Match("i", "Ivar"),
            SpelledCharacter.Match("g", "Gustav"),
            SpelledCharacter.Description(" ", "Space"),
            SpelledCharacter.Description("&", "Ampersand"),
            SpelledCharacter.Description(" ", "Space"),
            SpelledCharacter.Match("ø", "Østen"),
            SpelledCharacter.Match("s", "Sigrid"),
            SpelledCharacter.Match("t", "Teodor"),
            SpelledCharacter.Match("e", "Edith"),
            SpelledCharacter.Match("n", "Nils")
        ]

        XCTAssertEqual(spelling, control, "Norwegian spelling is wrong")
    }

    func testSpellingPortuguese() {
        let phrase = "Lisboa"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: .Portuguese)
        let control = [
            SpelledCharacter.Match("L", "Lisboa"),
            SpelledCharacter.Match("i", "Itália"),
            SpelledCharacter.Match("s", "Setúbal"),
            SpelledCharacter.Match("b", "Braga"),
            SpelledCharacter.Match("o", "Ovar"),
            SpelledCharacter.Match("a", "Aveiro")
        ]

        XCTAssertEqual(spelling, control, "Portuguese spelling is wrong")
    }

    func testSpellingPortugueseBrazilian() {
        let phrase = "Rio de Janeiro"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: .PortugueseBrazilian)
        let control = [
            SpelledCharacter.Match("R", "Raiz"),
            SpelledCharacter.Match("i", "Índio"),
            SpelledCharacter.Match("o", "Ouro"),
            SpelledCharacter.Description(" ", "Space"),
            SpelledCharacter.Match("d", "Dado"),
            SpelledCharacter.Match("e", "Estrela"),
            SpelledCharacter.Description(" ", "Space"),
            SpelledCharacter.Match("J", "José"),
            SpelledCharacter.Match("a", "Amor"),
            SpelledCharacter.Match("n", "Navio"),
            SpelledCharacter.Match("e", "Estrela"),
            SpelledCharacter.Match("i", "Índio"),
            SpelledCharacter.Match("r", "Raiz"),
            SpelledCharacter.Match("o", "Ouro")
        ]

        XCTAssertEqual(spelling, control, "Portuguese (Brazilian) spelling is wrong")
    }

    func testSpellingSlovene() {
        let phrase = "Ajdovščina & Tržič"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: .Slovene)
        let control = [
            SpelledCharacter.Match("A", "Ankaran"),
            SpelledCharacter.Match("j", "Jadran"),
            SpelledCharacter.Match("d", "Drava"),
            SpelledCharacter.Match("o", "Ormož"),
            SpelledCharacter.Match("v", "Velenje"),
            SpelledCharacter.Match("š", "Šmarje"),
            SpelledCharacter.Match("č", "Čatež"),
            SpelledCharacter.Match("i", "Izola"),
            SpelledCharacter.Match("n", "Nanos"),
            SpelledCharacter.Match("a", "Ankaran"),
            SpelledCharacter.Description(" ", "Space"),
            SpelledCharacter.Description("&", "Ampersand"),
            SpelledCharacter.Description(" ", "Space"),
            SpelledCharacter.Match("T", "Triglav"),
            SpelledCharacter.Match("r", "Ravne"),
            SpelledCharacter.Match("ž", "Žalec"),
            SpelledCharacter.Match("i", "Izola"),
            SpelledCharacter.Match("č", "Čatež"),
        ]

        XCTAssertEqual(spelling, control, "Slovene spelling is wrong")
    }

    func testSpellingSpanish() {
        let phrase = "Bañar"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: .Spanish)
        let control = [
            SpelledCharacter.Match("B", "Burgos"),
            SpelledCharacter.Match("a", "Antonio"),
            SpelledCharacter.Match("ñ", "Ñoño"),
            SpelledCharacter.Match("a", "Antonio"),
            SpelledCharacter.Match("r", "Ramón")
        ]

        XCTAssertEqual(spelling, control, "Spanish spelling is wrong")
    }

    func testSpellingSwedish() {
        let phrase = "Åmål, Höganäs & übel"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: .Swedish)
        let control = [
            SpelledCharacter.Match("Å", "Åke"),
            SpelledCharacter.Match("m", "Martin"),
            SpelledCharacter.Match("å", "Åke"),
            SpelledCharacter.Match("l", "Ludvig"),
            SpelledCharacter.Description(",", "Comma"),
            SpelledCharacter.Description(" ", "Space"),
            SpelledCharacter.Match("H", "Helge"),
            SpelledCharacter.Match("ö", "Östen"),
            SpelledCharacter.Match("g", "Gustav"),
            SpelledCharacter.Match("a", "Adam"),
            SpelledCharacter.Match("n", "Niklas"),
            SpelledCharacter.Match("ä", "Ärlig"),
            SpelledCharacter.Match("s", "Sigurd"),
            SpelledCharacter.Description(" ", "Space"),
            SpelledCharacter.Description("&", "Ampersand"),
            SpelledCharacter.Description(" ", "Space"),
            SpelledCharacter.Match("ü", "Übel"),
            SpelledCharacter.Match("b", "Bertil"),
            SpelledCharacter.Match("e", "Erik"),
            SpelledCharacter.Match("l", "Ludvig")
        ]
        
        XCTAssertEqual(spelling, control, "Swedish spelling is wrong")
    }
    
    func testSpellingTurkish() {
        let phrase = "Istanbul, Elâzığ, Uşak, İnegöl, Düziçi"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: .Turkish)
        let control = [
            SpelledCharacter.Match("I", "Isparta"),
            SpelledCharacter.Match("s", "Sinop"),
            SpelledCharacter.Match("t", "Tokat"),
            SpelledCharacter.Match("a", "Adana"),
            SpelledCharacter.Match("n", "Niğde"),
            SpelledCharacter.Match("b", "Bolu"),
            SpelledCharacter.Match("u", "Uşak"),
            SpelledCharacter.Match("l", "Lüleburgaz"),
            SpelledCharacter.Description(",", "Comma"),
            SpelledCharacter.Description(" ", "Space"),
            SpelledCharacter.Match("E", "Edirne"),
            SpelledCharacter.Match("l", "Lüleburgaz"),
            SpelledCharacter.Match("â", "Adana"),
            SpelledCharacter.Match("z", "Zonguldak"),
            SpelledCharacter.Match("ı", "Isparta"),
            SpelledCharacter.Match("ğ", "Yumuşak G"),
            SpelledCharacter.Description(",", "Comma"),
            SpelledCharacter.Description(" ", "Space"),
            SpelledCharacter.Match("U", "Uşak"),
            SpelledCharacter.Match("ş", "Şırnak"),
            SpelledCharacter.Match("a", "Adana"),
            SpelledCharacter.Match("k", "Kars"),
            SpelledCharacter.Description(",", "Comma"),
            SpelledCharacter.Description(" ", "Space"),
            SpelledCharacter.Match("İ", "İzmir"),
            SpelledCharacter.Match("n", "Niğde"),
            SpelledCharacter.Match("e", "Edirne"),
            SpelledCharacter.Match("g", "Giresun"),
            SpelledCharacter.Match("ö", "Ödemiş"),
            SpelledCharacter.Match("l", "Lüleburgaz"),
            SpelledCharacter.Description(",", "Comma"),
            SpelledCharacter.Description(" ", "Space"),
            SpelledCharacter.Match("D", "Denizli"),
            SpelledCharacter.Match("ü", "Ünye"),
            SpelledCharacter.Match("z", "Zonguldak"),
            SpelledCharacter.Match("i", "Isparta"),
            SpelledCharacter.Match("ç", "Çanakkale"),
            SpelledCharacter.Match("i", "Isparta")
        ]
        
        XCTAssertEqual(spelling, control, "Turkish spelling is wrong")
    }
    
    func testSpellingPGPWordList() {
        let phrase = "E582 94F2 E9A2 2748 6E8B"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: .PGPWordList)
        let control = [
            SpelledCharacter.Match("E5", "topmost"),
            SpelledCharacter.Match("82", "Istanbul"),
            SpelledCharacter.Match("94", "Pluto"),
            SpelledCharacter.Match("F2", "vagabond"),
            SpelledCharacter.Match("E9", "treadmill"),
            SpelledCharacter.Match("A2", "Pacific"),
            SpelledCharacter.Match("27", "brackish"),
            SpelledCharacter.Match("48", "dictator"),
            SpelledCharacter.Match("6E", "goldfish"), 
            SpelledCharacter.Match("8B", "Medusa")        ]
        
        XCTAssertEqual(spelling, control, "PGP Word List spelling is wrong")
    }
    
    func testDescribesUnknownCharacters() {
        let phrase = "ABC 🦆🦎🦈 !@#$%^&*()"
        let spelling = Speller.spell(phrase: phrase, withSpellingAlphabet: .InternationalRadiotelephony)

        let control = [SpelledCharacter.Match("A", "Alfa"),
                       SpelledCharacter.Match("B", "Bravo"),
                       SpelledCharacter.Match("C", "Charlie"),
                       SpelledCharacter.Description(" ", "Space"),
                       SpelledCharacter.Description("🦆", "Duck"),
                       SpelledCharacter.Description("🦎", "Lizard"),
                       SpelledCharacter.Description("🦈", "Shark"),
                       SpelledCharacter.Description(" ", "Space"),
                       SpelledCharacter.Description("!", "Exclamation mark"),
                       SpelledCharacter.Description("@", "At sign"),
                       SpelledCharacter.Description("#", "Number sign, Hashtag, Octothorpe, Sharp"),
                       SpelledCharacter.Description("$", "Dollar sign"),
                       SpelledCharacter.Description("%", "Percent sign"),
                       SpelledCharacter.Description("^", "Circumflex accent"),
                       SpelledCharacter.Description("&", "Ampersand"),
                       SpelledCharacter.Description("*", "Asterisk"),
                       SpelledCharacter.Description("(", "Left parenthesis"),
                       SpelledCharacter.Description(")", "Right parenthesis")
                       ]

        XCTAssertEqual(spelling, control, "Spelling with description of unknown characters has failed")
    }

}
