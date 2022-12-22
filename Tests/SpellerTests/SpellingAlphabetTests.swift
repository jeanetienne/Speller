//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import XCTest
@testable import Speller

class SpellingAlphabetTests: XCTestCase {

    func testInternationalRadiotelephony() {
        let mainControl: SpellingAlphabetContent =
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
         "Y": "Yankee",      "Z": "Zulu"]
        XCTAssertEqual(InternationalRadiotelephony.mainContent, mainControl, "International Radiotelephony spelling alphabet main content has changed")

        let numbersControl: SpellingAlphabetContent =
        ["1": "Unaone",      "2": "Bissotwo",
         "3": "Terrathree",  "4": "Kartefour",
         "5": "Pantafive",   "6": "Soxisix",
         "7": "Setteseven",  "8": "Oktoeight",
         "9": "Novenine",    "0": "Nadazero"]
        XCTAssertEqual(InternationalRadiotelephony.numbersContent, numbersControl, "International Radiotelephony spelling alphabet numbers content has changed")
    }

    func testUSFinancial() {
        let mainControl: SpellingAlphabetContent =
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
        XCTAssertEqual(USFinancial.mainContent, mainControl, "USFinancial spelling alphabet main content has changed")

        let numbersControl: SpellingAlphabetContent = [:]
        XCTAssertEqual(USFinancial.numbersContent, numbersControl, "USFinancial spelling alphabet numbers content has changed")
    }

    func testLAPD() {
        let mainControl: SpellingAlphabetContent =
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
        XCTAssertEqual(LAPD.mainContent, mainControl, "LAPD spelling alphabet main content has changed")

        let numbersControl: SpellingAlphabetContent = [:]
        XCTAssertEqual(LAPD.numbersContent, numbersControl, "LAPD spelling alphabet numbers content has changed")
    }

    func testCzech() {
        let mainControl: SpellingAlphabetContent =
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
        XCTAssertEqual(Czech.mainContent, mainControl, "Czech spelling alphabet main content has changed")

        let numbersControl: SpellingAlphabetContent = [:]
        XCTAssertEqual(Czech.numbersContent, numbersControl, "Czech spelling alphabet numbers content has changed")
    }

    func testDanish() {
        let mainControl: SpellingAlphabetContent =
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
        XCTAssertEqual(Danish.mainContent, mainControl, "Danish spelling alphabet main content has changed")

        let numbersControl: SpellingAlphabetContent = [:]
        XCTAssertEqual(Danish.numbersContent, numbersControl, "Danish spelling alphabet numbers content has changed")
    }

    func testDutch() {
        let mainControl: SpellingAlphabetContent =
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
        XCTAssertEqual(Dutch.mainContent, mainControl, "Dutch spelling alphabet main content has changed")

        let numbersControl: SpellingAlphabetContent = [:]
        XCTAssertEqual(Dutch.numbersContent, numbersControl, "Dutch spelling alphabet numbers content has changed")
    }

    func testFinnish() {
        let mainControl: SpellingAlphabetContent =
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
        XCTAssertEqual(Finnish.mainContent, mainControl, "Finnish spelling alphabet main content has changed")

        let numbersControl: SpellingAlphabetContent = [:]
        XCTAssertEqual(Finnish.numbersContent, numbersControl, "Finnish spelling alphabet numbers content has changed")
    }

    func testFrench() {
        let mainControl: SpellingAlphabetContent =
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
        XCTAssertEqual(French.mainContent, mainControl, "French spelling alphabet main content has changed")

        let numbersControl: SpellingAlphabetContent = [:]
        XCTAssertEqual(French.numbersContent, numbersControl, "French spelling alphabet numbers content has changed")
    }

    func testGerman() {
        let mainControl: SpellingAlphabetContent =
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
        XCTAssertEqual(German.mainContent, mainControl, "German spelling alphabet main content has changed")

        let numbersControl: SpellingAlphabetContent = [:]
        XCTAssertEqual(German.numbersContent, numbersControl, "German spelling alphabet numbers content has changed")
    }

    func testItalian() {
        let mainControl: SpellingAlphabetContent =
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
        XCTAssertEqual(Italian.mainContent, mainControl, "Italian spelling alphabet main content has changed")

        let numbersControl: SpellingAlphabetContent = [:]
        XCTAssertEqual(Italian.numbersContent, numbersControl, "Italian spelling alphabet numbers content has changed")
    }

    func testNorwegian() {
        let mainControl: SpellingAlphabetContent =
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
        XCTAssertEqual(Norwegian.mainContent, mainControl, "Norwegian spelling alphabet main content has changed")

        let numbersControl: SpellingAlphabetContent = [:]
        XCTAssertEqual(Norwegian.numbersContent, numbersControl, "Norwegian spelling alphabet numbers content has changed")
    }

    func testPortuguese() {
        let mainControl: SpellingAlphabetContent =
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
        XCTAssertEqual(Portuguese.mainContent, mainControl, "Portuguese spelling alphabet main content has changed")

        let numbersControl: SpellingAlphabetContent = [:]
        XCTAssertEqual(Portuguese.numbersContent, numbersControl, "Portuguese spelling alphabet numbers content has changed")
    }

    func testPortugueseBrazilian() {
        let mainControl: SpellingAlphabetContent =
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
        XCTAssertEqual(PortugueseBrazilian.mainContent, mainControl, "Portuguese (Brazilian) spelling alphabet main content has changed")

        let numbersControl: SpellingAlphabetContent = [:]
        XCTAssertEqual(PortugueseBrazilian.numbersContent, numbersControl, "Portuguese (Brazilian) spelling alphabet numbers content has changed")
    }

    func testSlovene() {
        let mainControl: SpellingAlphabetContent =
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
        XCTAssertEqual(Slovene.mainContent, mainControl, "Slovene spelling alphabet main content has changed")

        let numbersControl: SpellingAlphabetContent = [:]
        XCTAssertEqual(Slovene.numbersContent, numbersControl, "Slovene spelling alphabet numbers content has changed")
    }

    func testSpanish() {
        let mainControl: SpellingAlphabetContent =
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
        XCTAssertEqual(Spanish.mainContent, mainControl, "Spanish spelling alphabet main content has changed")

        let numbersControl: SpellingAlphabetContent = [:]
        XCTAssertEqual(Spanish.numbersContent, numbersControl, "Spanish spelling alphabet numbers content has changed")
    }

    func testSwedish() {
        let mainControl: SpellingAlphabetContent =
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
        XCTAssertEqual(Swedish.mainContent, mainControl, "Swedish spelling alphabet main content has changed")

        let numbersControl: SpellingAlphabetContent = [:]
        XCTAssertEqual(Swedish.numbersContent, numbersControl, "Swedish spelling alphabet numbers content has changed")
    }
    
    func testTurkish() {
        let mainControl: SpellingAlphabetContent =
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
        XCTAssertEqual(Turkish.mainContent, mainControl, "Turkish spelling alphabet main content has changed")

        let numbersControl: SpellingAlphabetContent = [:]
        XCTAssertEqual(Turkish.numbersContent, numbersControl, "Turkish spelling alphabet numbers content has changed")
    }

}
