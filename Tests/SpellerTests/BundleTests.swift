//
//  BundleTests.swift
//  Speller
//
//  Created by Jean-Étienne Parrot on 13/2/17.
//  Copyright © 2017 Speller. All rights reserved.
//

import XCTest

class BundleTests: XCTestCase {
    
    func testFrameworkBundleNotNil() {
        XCTAssertNotNil(Bundle.framework)
    }

    func testFrameworkBundleIdentifierHasPrefix() {
        if let bundleIdentifier = Bundle.framework.bundleIdentifier {
            XCTAssertTrue(bundleIdentifier.hasPrefix("net.jeanetienne.Speller-"))
        } else {
            XCTAssertTrue(false)
        }
    }

    func testFrameworkBundleIdentifierHasSuffix() {
        if let bundleIdentifier = Bundle.framework.bundleIdentifier {
            XCTAssertTrue(bundleIdentifier.hasSuffix("-Tests"))
        } else {
            XCTAssertTrue(false)
        }
    }

}
