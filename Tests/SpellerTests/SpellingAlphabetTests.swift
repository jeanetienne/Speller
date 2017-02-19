//
//  SpellingAlphabetTests.swift
//  Speller
//
//  Created by Jean-Étienne on 13/11/16.
//  Copyright © 2016 Jean-Étienne. All rights reserved.
//

import XCTest

class SpellingAlphabetTests: XCTestCase {

    func testInternationalRadiotelephony() {
        let content = SpellingAlphabet.InternationalRadiotelephony.content
        let control: SpellingAlphabetContent =
            ["A": "Alfa",        "B": "Bravo",
             "C": "Charlie",     "D": "Delta",
             "E": "Echo",        "F": "Foxtrot",
             "G": "Golf",        "H": "Hotel",
             "I": "India",       "J": "Juliett",
             "K": "Kilo",        "L": "Lima",
             "M": "Mike",        "N": "November",
             "O": "Oscar",       "P": "Papa",
             "Q": "Quebec",      "R": "Romeo",
             "S": "Sierra",      "T": "Tango",
             "U": "Uniform",     "V": "Victor",
             "W": "Whiskey",     "X": "X-ray",
             "Y": "Yankee",      "Z": "Zulu",
             "1": "Unaone",      "2": "Bissotwo",
             "3": "Terrathree",  "4": "Kartefour",
             "5": "Pantafive",   "6": "Soxisix",
             "7": "Setteseven",  "8": "Oktoeight",
             "9": "Novenine",    "0": "Nadazero"]

        XCTAssertEqual(content, control, "International Radiotelephony spelling alphabet has changed")
    }

    func testUSFinancial() {
        let content = SpellingAlphabet.USFinancial.content
        let control: SpellingAlphabetContent =
            ["A": "Adam",    "B": "Bob",
             "C": "Carol",   "D": "David",
             "E": "Eddie",   "F": "Frank",
             "G": "George",  "H": "Harry",
             "I": "Ike",     "J": "Jim",
             "K": "Kenny",   "L": "Larry",
             "M": "Mary",    "N": "Nancy",
             "O": "Oliver",  "P": "Peter",
             "Q": "Quincy",  "R": "Roger",
             "S": "Sam",     "T": "Thomas",
             "U": "Uncle",   "V": "Vincent",
             "W": "William", "X": "Xavier",
             "Y": "Yogi",    "Z": "Zachary"]

        XCTAssertEqual(content, control, "USFinancial spelling alphabet has changed")
    }

    func testLAPD() {
        let content = SpellingAlphabet.LAPD.content
        let control: SpellingAlphabetContent =
            ["A": "Adam",    "B": "Boy",
             "C": "Charles", "D": "David",
             "E": "Edward",  "F": "Frank",
             "G": "George",  "H": "Henry",
             "I": "Ida",     "J": "John",
             "K": "King",    "L": "Lincoln",
             "M": "Mary",    "N": "Nora",
             "O": "Ocean",   "P": "Paul",
             "Q": "Queen",   "R": "Robert",
             "S": "Sam",     "T": "Tom",
             "U": "Union",   "V": "Victor",
             "W": "William", "X": "X-ray",
             "Y": "Young",   "Z": "Zebra"]

        XCTAssertEqual(content, control, "LAPD spelling alphabet has changed")
    }

    func testCzech() {
        let content = SpellingAlphabet.Czech.content
        let control: SpellingAlphabetContent =
            ["A": "Adam",      "B": "Božena",
             "C": "Cyril",     "D": "David",
             "E": "Emil",      "F": "František",
             "G": "Gustav",    "H": "Helena",
             "I": "Ivan",      "J": "Josef",
             "K": "Karel",     "L": "Ludvik",
             "M": "Marie",     "N": "Norbert",
             "O": "Otakar",    "P": "Petr",
             "Q": "Quido",     "R": "Rudolf",
             "S": "Svatopluk", "T": "Tomáš",
             "U": "Urban",     "V": "Václav",
             "W": "Dvojité V", "X": "Xaver",
             "Y": "Ypsilon",   "Z": "Zuzana"]

        XCTAssertEqual(content, control, "Czech spelling alphabet has changed")
    }

    func testDanish() {
        let content = SpellingAlphabet.Danish.content
        let control: SpellingAlphabetContent =
            ["A": "Anna",    "Å": "Aase",
             "Æ": "Ægir",    "B": "Bernhard",
             "C": "Cecilie", "D": "David",
             "E": "Erik",    "F": "Frederik",
             "G": "Georg",   "H": "Hans",
             "I": "Ida",     "J": "Johan",
             "K": "Karen",   "L": "Ludvig",
             "M": "Mari",    "N": "Nikolaj",
             "O": "Odin",    "Ø": "Øresund",
             "P": "Peter",   "Q": "Quintus",
             "R": "Rasmus",  "S": "Søren",
             "T": "Theodor", "U": "Ulla",
             "V": "Viggo",   "W": "William",
             "X": "Xerxes",  "Y": "Yrsa",
             "Z": "Zackarias"]

        XCTAssertEqual(content, control, "Danish spelling alphabet has changed")
    }

    func testDutch() {
        let content = SpellingAlphabet.Dutch.content
        let control: SpellingAlphabetContent =
            ["A": "Anton",    "B": "Bernard",
             "C": "Cornelis", "D": "Dirk",
             "E": "Eduard",   "F": "Ferdinand",
             "G": "Gerard",   "H": "Hendrik",
             "I": "Izaak",    "J": "Julius",
             "K": "Karel",    "L": "Lodewijk",
             "M": "Maria",    "N": "Nico",
             "O": "Otto",     "P": "Pieter",
             "Q": "Quotiënt", "R": "Richard",
             "S": "Simon",    "T": "Theodor",
             "U": "Utrecht",  "V": "Victor",
             "W": "Willem",   "X": "Xanthippe",
             "Ĳ": "Ĳmuiden",  "Y": "Ypsilon",
             "Z": "Zaandam"]

        XCTAssertEqual(content, control, "Dutch spelling alphabet has changed")
    }

    func testFinnish() {
        let content = SpellingAlphabet.Finnish.content
        let control: SpellingAlphabetContent =
            ["A": "Aarne",   "Ä": "Äiti",
             "Å": "Åke",     "B": "Bertta",
             "C": "Celsius", "D": "Daavid",
             "E": "Eemeli",  "F": "Faarao",
             "G": "Gideon",  "H": "Heikki",
             "I": "Iivari",  "J": "Jussi",
             "K": "Kalle",   "L": "Lauri",
             "M": "Matti",   "N": "Niilo",
             "O": "Otto",    "Ö": "Öljy",
             "P": "Paavo",   "Q": "Kuu",
             "R": "Risto",   "S": "Sakari",
             "T": "Tyyne",   "U": "Urho",
             "V": "Vihtori", "W": "Wiski",
             "X": "Äksä",    "Y": "Yrjö",
             "Z": "Tseta"]

        XCTAssertEqual(content, control, "Finnish spelling alphabet has changed")
    }

    func testFrench() {
        let content = SpellingAlphabet.French.content
        let control: SpellingAlphabetContent =
            ["A": "Anatole",     "B": "Berthe",
             "C": "Célestin",    "D": "Désiré",
             "E": "Eugène",      "F": "François",
             "G": "Gaston",      "H": "Henri",
             "I": "Irma",        "J": "Joseph",
             "K": "Kléber",      "L": "Louis",
             "M": "Marcel",      "N": "Nicolas",
             "O": "Oscar",       "P": "Pierre",
             "Q": "Quintal",     "R": "Raoul",
             "S": "Suzanne",     "T": "Thérèse",
             "U": "Ursule",      "V": "Victor",
             "W": "William",     "X": "Xavier",
             "Y": "Yvonne",      "Z": "Zoé"]

        XCTAssertEqual(content, control, "French spelling alphabet has changed")
    }

    func testGerman() {
        let content = SpellingAlphabet.German.content
        let control: SpellingAlphabetContent =
            ["A": "Anton",                 "Ä": "Ärger",
             "B": "Berta",                 "C": "Cäsar",
             "D": "Dora",                  "E": "Emil",
             "F": "Friedrich",             "G": "Gustav",
             "H": "Heinrich",              "I": "Ida",
             "J": "Julius",                "K": ["Kaufmann", "Konrad"],
             "L": "Ludwig",                "M": "Martha",
             "N": "Nordpol",               "O": "Otto",
             "Ö": "Ökonom",                "P": "Paula",
             "Q": "Quelle",                "R": "Richard",
             "S": ["Samuel", "Siegfried"], "ß": "Eszett",
             "T": "Theodor",               "U": "Ulrich",
             "Ü": ["Übermut", "Übel"],     "V": "Viktor",
             "W": "Wilhelm",               "X": ["Xanthippe", "Xaver"],
             "Y": "Ypsilon",               "Z": ["Zacharias", "Zürich"]]

        XCTAssertEqual(content, control, "German spelling alphabet has changed")
    }

    func testItalian() {
        let content = SpellingAlphabet.Italian.content
        let control: SpellingAlphabetContent =
            ["A": "Ancona",          "B": "Bologna",
             "C": "Como",            "D": "Domodossola",
             "E": "Empoli",          "F": "Firenze",
             "G": "Genova",          "H": "Hotel",
             "I": "Imola",           "J": "Jolly",
             "K": "Kappa",           "L": "Livorno",
             "M": "Milano",          "N": "Napoli",
             "O": "Otranto",         "P": "Padova",
             "Q": "Quadro",          "R": "Roma",
             "S": "Savona",          "T": "Torino",
             "U": "Udine",           "V": "Venezia",
             "W": "Washington",      "X": ["Xeres", "Xilofono"],
             "Y": ["York", "Yacht"], "Z": "Zara"]

        XCTAssertEqual(content, control, "Italian spelling alphabet has changed")
    }

    func testNorwegian() {
        let content = SpellingAlphabet.Norwegian.content
        let control: SpellingAlphabetContent =
            ["A": "Anna",     "Å": "Åse",
             "Æ": "Ærlig",    "B": "Bernhard",
             "C": "Caesar",   "D": "David",
             "E": "Edith",    "F": "Fredrik",
             "G": "Gustav",   "H": "Harald",
             "I": "Ivar",     "J": "Johan",
             "K": "Karin",    "L": "Ludvig",
             "M": "Martin",   "N": "Nils",
             "O": "Olivia",   "Ø": "Østen",
             "P": "Petter",   "Q": "Quintus",
             "R": "Rikard",   "S": "Sigrid",
             "T": "Teodor",   "U": "Ulrik",
             "V": "Enkelt-V", "W": "Dobbelt-V",
             "X": "Xerxes",   "Y": "Yngling",
             "Z": "Zakarias"]

        XCTAssertEqual(content, control, "Norwegian spelling alphabet has changed")
    }

    func testPortuguese() {
        let content = SpellingAlphabet.Portuguese.content
        let control: SpellingAlphabetContent =
            ["A": "Aveiro",   "B": "Braga",
             "C": "Coimbra",  "D": "Dafundo",
             "E": "Évora",    "F": "Faro",
             "G": "Guarda",   "H": "Horta",
             "I": "Itália",   "J": "José",
             "K": "Kodak",    "L": "Lisboa",
             "M": "Maria",    "N": "Nazaré",
             "O": "Ovar",     "P": "Porto",
             "Q": "Queluz",   "R": "Rossio",
             "S": "Setúbal",  "T": "Tavira",
             "U": "Unidade",  "V": "Vidago",
             "W": "Waldemar", "X": "Xavier",
             "Y": "York",     "Z": "Zulmira"]

        XCTAssertEqual(content, control, "Portuguese spelling alphabet has changed")
    }

    func testPortugueseBrazilian() {
        let content = SpellingAlphabet.PortugueseBrazilian.content
        let control: SpellingAlphabetContent =
            ["A": "Amor",     "B": "Bandeira",
             "C": "Cobra",    "D": "Dado",
             "E": "Estrela",  "F": "Feira",
             "G": "Goiaba",   "H": "Hotel",
             "I": "Índio",    "J": "José",
             "K": "Kiwi",     "L": "Lua",
             "M": "Maria",    "N": "Navio",
             "O": "Ouro",     "P": "Pipa",
             "Q": "Quilombo", "R": "Raiz",
             "S": "Saci",     "T": "Tatu",
             "U": "Uva",      "V": "Vitória",
             "W": "Wilson",   "X": "Xadrez",
             "Y": "Yolanda",  "Z": "Zebra"]

        XCTAssertEqual(content, control, "Portuguese (Brazilian) spelling alphabet has changed")
    }

    func testSlovene() {
        let content = SpellingAlphabet.Slovene.content
        let control: SpellingAlphabetContent =
            ["A": "Ankaran",   "B": "Bled",
             "C": "Celje",     "Č": "Čatež",
             "D": "Drava",     "E": "Evropa",
             "F": "Fala",      "G": "Gorica",
             "H": "Hrastnik",  "I": "Izola",
             "J": "Jadran",    "K": "Kamnik",
             "L": "Ljubljana", "M": "Maribor",
             "N": "Nanos",     "O": "Ormož",
             "P": "Piran",     "Q": "Queen",
             "R": "Ravne",     "S": "Soča",
             "Š": "Šmarje",    "T": "Triglav",
             "U": "Unec",      "V": "Velenje",
             "W": "Dvojni V",  "X": "Iks",
             "Y": "Ipsilon",   "Z": "Zalog",
             "Ž": "Žalec"]

        XCTAssertEqual(content, control, "Slovene spelling alphabet has changed")
    }

    func testSpanish() {
        let content = SpellingAlphabet.Spanish.content
        let control: SpellingAlphabetContent =
            ["A": "Antonio",  "B": "Burgos",
             "C": "Carmen",   "D": "Dolores",
             "E": "Enrique",  "F": "Francia",
             "G": "Granada",  "H": "Historia",
             "I": "Inés",     "J": "José",
             "K": "Kilo",     "L": "Lorenzo",
             "M": "Madrid",   "N": "Navarra",
             "Ñ": "Ñoño",     "O": "Oviedo",
             "P": "París",    "Q": "Querido",
             "R": "Ramón",    "S": "Sábado",
             "T": "Toledo",   "U": "Ulises",
             "V": "Valencia", "W": "Washington",
             "X": "Xilófono", "Y": "Yegua",
             "Z": "Zaragoza"]

        XCTAssertEqual(content, control, "Spanish spelling alphabet has changed")
    }

    func testSwedish() {
        let content = SpellingAlphabet.Swedish.content
        let control: SpellingAlphabetContent =
            ["A": "Adam",    "Ä": "Ärlig",
             "Å": "Åke",     "B": "Bertil",
             "C": "Caesar",  "D": "David",
             "E": "Erik",    "F": "Filip",
             "G": "Gustav",  "H": "Helge",
             "I": "Ivar",    "J": "Johan",
             "K": "Kalle",   "L": "Ludvig",
             "M": "Martin",  "N": "Niklas",
             "O": "Olof",    "Ö": "Östen",
             "P": "Petter",  "Q": "Quintus",
             "R": "Rudolf",  "S": "Sigurd",
             "T": "Tore",    "U": "Urban",
             "Ü": "Übel",    "V": "Viktor",
             "W": "Wilhelm", "X": "Xerxes",
             "Y": "Yngve",   "Z": "Zäta"]
        
        XCTAssertEqual(content, control, "Swedish spelling alphabet has changed")
    }
    
    func testTurkish() {
        let content = SpellingAlphabet.Turkish.content
        let control: SpellingAlphabetContent =
            ["A": "Adana",      "B": "Bolu",
             "C": "Ceyhan",     "Ç": "Çanakkale",
             "D": "Denizli",    "E": "Edirne",
             "F": "Fatsa",      "G": "Giresun",
             "Ğ": "Yumuşak G",  "H": "Hatay",
             "I": "Isparta",    "İ": "İzmir",
             "J": "Jandarma",   "K": "Kars",
             "L": "Lüleburgaz", "M": "Muş",
             "N": "Niğde",      "O": "Ordu",
             "Ö": "Ödemiş",     "P": "Polatlı",
             "R": "Rize",       "S": "Sinop",
             "Ş": "Şırnak",     "T": "Tokat",
             "U": "Uşak",       "Ü": "Ünye",
             "V": "Van",        "Y": "Yozgat",
             "Z": "Zonguldak"]
        
        XCTAssertEqual(content, control, "Turkish spelling alphabet has changed")
    }

}
