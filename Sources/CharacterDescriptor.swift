//
//  CharacterDescriptor.swift
//  Speller
//
//  Created by Jean-Étienne on 20/12/16.
//  Copyright © 2016 Speller. All rights reserved.
//

import Foundation

fileprivate typealias CharacterDescriptorData = [String: [String: Any]]

fileprivate let DescriptionKey: String = "description"

class CharacterDescriptor {

    enum CharacterSet: String {

        case Emoji

        case Latin

    }

    private var data: CharacterDescriptorData!

    init?(_ characterSet: CharacterSet) {
        if let someData = loadDataPropertyList(forCharacterSet: characterSet) {
            data = someData
        } else {
            return nil
        }
    }

    func description(_ character: String) -> String? {
        return data[character]?[DescriptionKey] as? String
    }

}

// MARK: - Property list management
private extension CharacterDescriptor {

    enum PropertyListType: String {

        case Data

        func nameForFilename() -> String {
            return self.rawValue.lowercased()
        }
        
    }
    
    func loadDataPropertyList(forCharacterSet characterSet: CharacterSet) -> CharacterDescriptorData? {
        if let propertyListPath = propertyListPath(forCharacterSet: characterSet, andType: .Data) {
            var dictionary = CharacterDescriptorData()
            try? PropertyListLoader.load(atPath: propertyListPath, storage: &dictionary)
            return dictionary
        }

        return nil
    }

    func propertyListPath(forCharacterSet characterSet: CharacterSet,
                                  andType type: PropertyListType) -> String? {
        let name = characterSet.rawValue.lowercased() + "-" + type.nameForFilename()
        return Bundle.framework.path(forResource: name, ofType: "plist")
    }
    
}
