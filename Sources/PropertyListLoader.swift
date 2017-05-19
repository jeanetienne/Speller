//
//  PropertyListLoader.swift
//  Speller
//
//  Created by Jean-Étienne Parrot on 12/2/17.
//  Copyright © 2017 Speller. All rights reserved.
//

import Foundation

class PropertyListLoader {

    static func load<T>(atPath path: String, storage: inout T) throws {
        var baseFormat = PropertyListSerialization.PropertyListFormat.xml
        if let data = FileManager.default.contents(atPath: path) {
            do {
                storage = try withUnsafeMutablePointer(to: &baseFormat)
                { (format: UnsafeMutablePointer<PropertyListSerialization.PropertyListFormat>) -> T in
                    return try PropertyListSerialization.propertyList(from: data, options: [], format: format) as! T
                }
            } catch {
                throw PropertyListLoaderError.DeserializationError
            }
        }
    }

    enum PropertyListLoaderError: Error {

        case DeserializationError
        
    }

}
