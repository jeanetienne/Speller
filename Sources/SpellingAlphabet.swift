//
//  SpellingAlphabet.swift
//  Speller
//
//  Created by Jean-Étienne on 7/11/16.
//  Copyright © 2016 Jean-Étienne. All rights reserved.
//

import Foundation

typealias SpellingAlphabetContent = [String: CodeWordCollection]

public enum SpellingAlphabet {

    case InternationalRadiotelephony

    case USFinancial

    case LAPD

    case Czech

    case Danish

    case Dutch

    case Finnish

    case French

    case German

    case Italian

    case Norwegian

    case Portuguese

    case PortugueseBrazilian

    case Slovene

    case Spanish

    case Swedish

    case Turkish
    
    case PGPWordList

    var content: SpellingAlphabetContent {
        switch self {
        case .InternationalRadiotelephony:
            return internationalRadiotelephony()
        case .USFinancial:
            return usFinancial()
        case .LAPD:
            return lapd()
        case .Czech:
            return czech()
        case .Danish:
            return danish()
        case .Dutch:
            return dutch()
        case .Finnish:
            return finnish()
        case .French:
            return french()
        case .German:
            return german()
        case .Italian:
            return italian()
        case .Norwegian:
            return norwegian()
        case .Portuguese:
            return portuguese()
        case .PortugueseBrazilian:
            return portugueseBrazilian()
        case .Slovene:
            return slovene()
        case .Spanish:
            return spanish()
        case .Swedish:
            return swedish()
        case .Turkish:
            return turkish()
        case .PGPWordList:
            return pgpWordList()
        }
    }

    func spell(_ phrase: String) -> [SpelledCharacter] {
        return enumerate(phrase: phrase)
            .enumerated()
            .map { spell(character: $1, atIndex: $0) }
    }
    
    // MARK: - Private helpers - Spelling
    private func enumerate(phrase: String) -> [String] {
        switch self {
        case .PGPWordList:
            let stripNonHex = StringTransform(rawValue: "[^0123456789abcdefABCDEF] Remove;")
            let sanitizedPhrase = phrase
                .uppercased()
                .applyingTransform(stripNonHex, reverse: false)
                .map { $0.components(withLength: 2) } ?? phrase.components(withLength: 2)
            
            return sanitizedPhrase
        default:
            var characters: [String] = []
            phrase.enumerateSubstrings(in: phrase.startIndex..<phrase.endIndex, options: .byComposedCharacterSequences) { (string, rangeOne, rangeTwo, someBool) in
                if let decomposedString = string {
                    characters.append(decomposedString)
                }
            }

            return characters
        }
    }
    
    private func spell(character: String, atIndex index: Int) -> SpelledCharacter {
        if let codeWord = codeWord(forCharacter: character) {
            switch self {
            case .PGPWordList:
                return SpelledCharacter.Match(character, CodeWordCollection(codeWord: codeWord.codeWords[index % 2]))
            default:
                return SpelledCharacter.Match(character, codeWord)
            }
        } else {
            return SpelledCharacter.Unknown(character)
        }
    }
    
    private func codeWord(forCharacter character: String) -> CodeWordCollection? {
        if let codeWord = content[character] {
            return codeWord
        }
        
        let candidates = [
            character.uppercased(),
            character.folding(options: .diacriticInsensitive, locale: nil),
            character.folding(options: .diacriticInsensitive, locale: nil).uppercased()
        ]
        
        for candidate in candidates {
            guard !candidate.isEmpty else {
                continue
            }
            
            if let codeWordCollection = content[candidate] {
                return codeWordCollection
            }
        }
        
        return nil
    }

    // MARK: - Private helpers - Content
    private func internationalRadiotelephony() -> SpellingAlphabetContent {
        return ["A": "Alfa",        "B": "Bravo",
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
    }

    private func usFinancial() -> SpellingAlphabetContent {
        return ["A": "Adam",    "B": "Bob",
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
    }

    private func lapd() -> SpellingAlphabetContent {
        return ["A": "Adam",    "B": "Boy",
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
    }

    private func czech() -> SpellingAlphabetContent {
        return ["A": "Adam",      "B": "Božena",
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
    }

    private func danish() -> SpellingAlphabetContent {
        return ["A": "Anna",    "Å": "Aase",
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
    }

    private func dutch() -> SpellingAlphabetContent {
        return ["A": "Anton",    "B": "Bernard",
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
    }

    private func finnish() -> SpellingAlphabetContent {
        return ["A": "Aarne",   "Ä": "Äiti",
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
    }

    private func french() -> SpellingAlphabetContent {
        return ["A": "Anatole",     "B": "Berthe",
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
    }

    private func german() -> SpellingAlphabetContent {
        return ["A": "Anton",                 "Ä": "Ärger",
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
    }

    private func italian() -> SpellingAlphabetContent {
        return ["A": "Ancona",          "B": "Bologna",
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
    }

    private func norwegian() -> SpellingAlphabetContent {
        return ["A": "Anna",     "Å": "Åse",
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
    }

    private func portuguese() -> SpellingAlphabetContent {
        return ["A": "Aveiro",   "B": "Braga",
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
    }

    private func portugueseBrazilian() -> SpellingAlphabetContent {
        return ["A": "Amor",     "B": "Bandeira",
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
    }

    private func slovene() -> SpellingAlphabetContent {
        return ["A": "Ankaran",   "B": "Bled",
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
    }

    private func spanish() -> SpellingAlphabetContent {
        return ["A": "Antonio",  "B": "Burgos",
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
    }

    private func swedish() -> SpellingAlphabetContent {
        return ["A": "Adam",    "Ä": "Ärlig",
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
    }

    private func turkish() -> SpellingAlphabetContent {
        return ["A": "Adana",      "B": "Bolu",
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
    }
    
    private func pgpWordList() -> SpellingAlphabetContent {
        return ["00": ["aardvark", "adroitness"],
                "01": ["absurd", "adviser"],
                "02": ["accrue", "aftermath"],
                "03": ["acme", "aggregate"],
                "04": ["adrift", "alkali"],
                "05": ["adult", "almighty"],
                "06": ["afflict", "amulet"],
                "07": ["ahead", "amusement"],
                "08": ["aimless", "antenna"],
                "09": ["Algol", "applicant"],
                "0A": ["allow", "Apollo"],
                "0B": ["alone", "armistice"],
                "0C": ["ammo", "article"],
                "0D": ["ancient", "asteroid"],
                "0E": ["apple", "Atlantic"],
                "0F": ["artist", "atmosphere"],
                "10": ["assume", "autopsy"],
                "11": ["Athens", "Babylon"],
                "12": ["atlas", "backwater"],
                "13": ["Aztec", "barbecue"],
                "14": ["baboon", "belowground"],
                "15": ["backfield", "bifocals"],
                "16": ["backward", "bodyguard"],
                "17": ["banjo", "bookseller"],
                "18": ["beaming", "borderline"],
                "19": ["bedlamp", "bottomless"],
                "1A": ["beehive", "Bradbury"],
                "1B": ["beeswax", "bravado"],
                "1C": ["befriend", "Brazilian"],
                "1D": ["Belfast", "breakaway"],
                "1E": ["berserk", "Burlington"],
                "1F": ["billiard", "businessman"],
                "20": ["bison", "butterfat"],
                "21": ["blackjack", "Camelot"],
                "22": ["blockade", "candidate"],
                "23": ["blowtorch", "cannonball"],
                "24": ["bluebird", "Capricorn"],
                "25": ["bombast", "caravan"],
                "26": ["bookshelf", "caretaker"],
                "27": ["brackish", "celebrate"],
                "28": ["breadline", "cellulose"],
                "29": ["breakup", "certify"],
                "2A": ["brickyard", "chambermaid"],
                "2B": ["briefcase", "Cherokee"],
                "2C": ["Burbank", "Chicago"],
                "2D": ["button", "clergyman"],
                "2E": ["buzzard", "coherence"],
                "2F": ["cement", "combustion"],
                "30": ["chairlift", "commando"],
                "31": ["chatter", "company"],
                "32": ["checkup", "component"],
                "33": ["chisel", "concurrent"],
                "34": ["choking", "confidence"],
                "35": ["chopper", "conformist"],
                "36": ["Christmas", "congregate"],
                "37": ["clamshell", "consensus"],
                "38": ["classic", "consulting"],
                "39": ["classroom", "corporate"],
                "3A": ["cleanup", "corrosion"],
                "3B": ["clockwork", "councilman"],
                "3C": ["cobra", "crossover"],
                "3D": ["commence", "crucifix"],
                "3E": ["concert", "cumbersome"],
                "3F": ["cowbell", "customer"],
                "40": ["crackdown", "Dakota"],
                "41": ["cranky", "decadence"],
                "42": ["crowfoot", "December"],
                "43": ["crucial", "decimal"],
                "44": ["crumpled", "designing"],
                "45": ["crusade", "detector"],
                "46": ["cubic", "detergent"],
                "47": ["dashboard", "determine"],
                "48": ["deadbolt", "dictator"],
                "49": ["deckhand", "dinosaur"],
                "4A": ["dogsled", "direction"],
                "4B": ["dragnet", "disable"],
                "4C": ["drainage", "disbelief"],
                "4D": ["dreadful", "disruptive"],
                "4E": ["drifter", "distortion"],
                "4F": ["dropper", "document"],
                "50": ["drumbeat", "embezzle"],
                "51": ["drunken", "enchanting"],
                "52": ["Dupont", "enrollment"],
                "53": ["dwelling", "enterprise"],
                "54": ["eating", "equation"],
                "55": ["edict", "equipment"],
                "56": ["egghead", "escapade"],
                "57": ["eightball", "Eskimo"],
                "58": ["endorse", "everyday"],
                "59": ["endow", "examine"],
                "5A": ["enlist", "existence"],
                "5B": ["erase", "exodus"],
                "5C": ["escape", "fascinate"],
                "5D": ["exceed", "filament"],
                "5E": ["eyeglass", "finicky"],
                "5F": ["eyetooth", "forever"],
                "60": ["facial", "fortitude"],
                "61": ["fallout", "frequency"],
                "62": ["flagpole", "gadgetry"],
                "63": ["flatfoot", "Galveston"],
                "64": ["flytrap", "getaway"],
                "65": ["fracture", "glossary"],
                "66": ["framework", "gossamer"],
                "67": ["freedom", "graduate"],
                "68": ["frighten", "gravity"],
                "69": ["gazelle", "guitarist"],
                "6A": ["Geiger", "hamburger"],
                "6B": ["glitter", "Hamilton"],
                "6C": ["glucose", "handiwork"],
                "6D": ["goggles", "hazardous"],
                "6E": ["goldfish", "headwaters"],
                "6F": ["gremlin", "hemisphere"],
                "70": ["guidance", "hesitate"],
                "71": ["hamlet", "hideaway"],
                "72": ["highchair", "holiness"],
                "73": ["hockey", "hurricane"],
                "74": ["indoors", "hydraulic"],
                "75": ["indulge", "impartial"],
                "76": ["inverse", "impetus"],
                "77": ["involve", "inception"],
                "78": ["island", "indigo"],
                "79": ["jawbone", "inertia"],
                "7A": ["keyboard", "infancy"],
                "7B": ["kickoff", "inferno"],
                "7C": ["kiwi", "informant"],
                "7D": ["klaxon", "insincere"],
                "7E": ["locale", "insurgent"],
                "7F": ["lockup", "integrate"],
                "80": ["merit", "intention"],
                "81": ["minnow", "inventive"],
                "82": ["miser", "Istanbul"],
                "83": ["Mohawk", "Jamaica"],
                "84": ["mural", "Jupiter"],
                "85": ["music", "leprosy"],
                "86": ["necklace", "letterhead"],
                "87": ["Neptune", "liberty"],
                "88": ["newborn", "maritime"],
                "89": ["nightbird", "matchmaker"],
                "8A": ["Oakland", "maverick"],
                "8B": ["obtuse", "Medusa"],
                "8C": ["offload", "megaton"],
                "8D": ["optic", "microscope"],
                "8E": ["orca", "microwave"],
                "8F": ["payday", "midsummer"],
                "90": ["peachy", "millionaire"],
                "91": ["pheasant", "miracle"],
                "92": ["physique", "misnomer"],
                "93": ["playhouse", "molasses"],
                "94": ["Pluto", "molecule"],
                "95": ["preclude", "Montana"],
                "96": ["prefer", "monument"],
                "97": ["preshrunk", "mosquito"],
                "98": ["printer", "narrative"],
                "99": ["prowler", "nebula"],
                "9A": ["pupil", "newsletter"],
                "9B": ["puppy", "Norwegian"],
                "9C": ["python", "October"],
                "9D": ["quadrant", "Ohio"],
                "9E": ["quiver", "onlooker"],
                "9F": ["quota", "opulent"],
                "A0": ["ragtime", "Orlando"],
                "A1": ["ratchet", "outfielder"],
                "A2": ["rebirth", "Pacific"],
                "A3": ["reform", "pandemic"],
                "A4": ["regain", "Pandora"],
                "A5": ["reindeer", "paperweight"],
                "A6": ["rematch", "paragon"],
                "A7": ["repay", "paragraph"],
                "A8": ["retouch", "paramount"],
                "A9": ["revenge", "passenger"],
                "AA": ["reward", "pedigree"],
                "AB": ["rhythm", "Pegasus"],
                "AC": ["ribcage", "penetrate"],
                "AD": ["ringbolt", "perceptive"],
                "AE": ["robust", "performance"],
                "AF": ["rocker", "pharmacy"],
                "B0": ["ruffled", "phonetic"],
                "B1": ["sailboat", "photograph"],
                "B2": ["sawdust", "pioneer"],
                "B3": ["scallion", "pocketful"],
                "B4": ["scenic", "politeness"],
                "B5": ["scorecard", "positive"],
                "B6": ["Scotland", "potato"],
                "B7": ["seabird", "processor"],
                "B8": ["select", "provincial"],
                "B9": ["sentence", "proximate"],
                "BA": ["shadow", "puberty"],
                "BB": ["shamrock", "publisher"],
                "BC": ["showgirl", "pyramid"],
                "BD": ["skullcap", "quantity"],
                "BE": ["skydive", "racketeer"],
                "BF": ["slingshot", "rebellion"],
                "C0": ["slowdown", "recipe"],
                "C1": ["snapline", "recover"],
                "C2": ["snapshot", "repellent"],
                "C3": ["snowcap", "replica"],
                "C4": ["snowslide", "reproduce"],
                "C5": ["solo", "resistor"],
                "C6": ["southward", "responsive"],
                "C7": ["soybean", "retraction"],
                "C8": ["spaniel", "retrieval"],
                "C9": ["spearhead", "retrospect"],
                "CA": ["spellbind", "revenue"],
                "CB": ["spheroid", "revival"],
                "CC": ["spigot", "revolver"],
                "CD": ["spindle", "sandalwood"],
                "CE": ["spyglass", "sardonic"],
                "CF": ["stagehand", "Saturday"],
                "D0": ["stagnate", "savagery"],
                "D1": ["stairway", "scavenger"],
                "D2": ["standard", "sensation"],
                "D3": ["stapler", "sociable"],
                "D4": ["steamship", "souvenir"],
                "D5": ["sterling", "specialist"],
                "D6": ["stockman", "speculate"],
                "D7": ["stopwatch", "stethoscope"],
                "D8": ["stormy", "stupendous"],
                "D9": ["sugar", "supportive"],
                "DA": ["surmount", "surrender"],
                "DB": ["suspense", "suspicious"],
                "DC": ["sweatband", "sympathy"],
                "DD": ["swelter", "tambourine"],
                "DE": ["tactics", "telephone"],
                "DF": ["talon", "therapist"],
                "E0": ["tapeworm", "tobacco"],
                "E1": ["tempest", "tolerance"],
                "E2": ["tiger", "tomorrow"],
                "E3": ["tissue", "torpedo"],
                "E4": ["tonic", "tradition"],
                "E5": ["topmost", "travesty"],
                "E6": ["tracker", "trombonist"],
                "E7": ["transit", "truncated"],
                "E8": ["trauma", "typewriter"],
                "E9": ["treadmill", "ultimate"],
                "EA": ["Trojan", "undaunted"],
                "EB": ["trouble", "underfoot"],
                "EC": ["tumor", "unicorn"],
                "ED": ["tunnel", "unify"],
                "EE": ["tycoon", "universe"],
                "EF": ["uncut", "unravel"],
                "F0": ["unearth", "upcoming"],
                "F1": ["unwind", "vacancy"],
                "F2": ["uproot", "vagabond"],
                "F3": ["upset", "vertigo"],
                "F4": ["upshot", "Virginia"],
                "F5": ["vapor", "visitor"],
                "F6": ["village", "vocalist"],
                "F7": ["virus", "voyager"],
                "F8": ["Vulcan", "warranty"],
                "F9": ["waffle", "Waterloo"],
                "FA": ["wallet", "whimsical"],
                "FB": ["watchword", "Wichita"],
                "FC": ["wayside", "Wilmington"],
                "FD": ["willow", "Wyoming"],
                "FE": ["woodlark", "yesteryear"],
                "FF": ["Zulu", "Yucatan"]]
    }
    
}

private extension String {
    
    func components(withLength length: Int) -> [String] {
        return stride(from: 0, to: self.characters.count, by: length).map {
            let start = self.index(self.startIndex, offsetBy: $0)
            let end = self.index(start, offsetBy: length, limitedBy: self.endIndex) ?? self.endIndex
            return self[start..<end]
        }
    }
    
}
