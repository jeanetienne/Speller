//
//  Bundle.swift
//  Speller
//
//  Created by Jean-Étienne Parrot on 12/2/17.
//  Copyright © 2017 Speller. All rights reserved.
//

import Foundation

extension Bundle {

    static var framework: Bundle {
        return Bundle(for: Speller.self)
    }

}
