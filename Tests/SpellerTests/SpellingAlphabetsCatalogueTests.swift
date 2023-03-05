//
//  Speller
//  Copyright © Jean-Étienne. All rights reserved.
//

import XCTest
@testable import Speller

final class SpellingAlphabetsCatalogueTests: XCTestCase {

    func testIdentifiersAreUnique() {
        let identifiers = SpellingAlphabet.catalogue.map { $0.uniqueIdentifier }
        let uniqueIdentifiers = Set(identifiers)
        XCTAssertEqual(identifiers.count, uniqueIdentifiers.count, "Some identifiers are not unique.")
    }

    func testAssociatedLanguageCodesAreCorrect() {
        let languageCodes = SpellingAlphabet.catalogue
            .compactMap { $0.associatedLanguageCode }

        let uniqueLanguageCodes = Set(languageCodes)
        let uniqueAvailableLanguageCodes = Set(Locale.isoLanguageCodes)
        let intersection = uniqueAvailableLanguageCodes.intersection(uniqueLanguageCodes)

        XCTAssertEqual(uniqueLanguageCodes.count, intersection.count, "Some language codes are incorrect.")
    }

    func testAssociatedRegionCodesAreCorrect() {
        let regionCodes = SpellingAlphabet.catalogue
            .compactMap { $0.associatedRegionCode }

        let uniqueRegionCodes = Set(regionCodes)
        let uniqueAvailableRegionCodes = Set(Locale.isoRegionCodes)
        let intersection = uniqueAvailableRegionCodes.intersection(uniqueRegionCodes)

        XCTAssertEqual(uniqueRegionCodes.count, intersection.count, "Some region codes are incorrect.")
    }

}
