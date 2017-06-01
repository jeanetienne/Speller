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

    private var data: CharacterDescriptorData = [:]

    init?(_ characterSet: CharacterSet) {
        guard let propertyList = try? CharacterDescriptor.loadDataPropertyList(forCharacterSet: characterSet) else {
            return nil
        }
        data = propertyList
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

    enum CharacterDescriptorPropertyListError: Error {
        case PropertyListPathNotFound
    }
    
    static func loadDataPropertyList(forCharacterSet characterSet: CharacterSet) throws -> CharacterDescriptorData {
        if let path = self.propertyListPath(forCharacterSet: characterSet, andType: .Data) {
            return try PropertyListSerialization.read(at: path)
        } else {
            throw CharacterDescriptorPropertyListError.PropertyListPathNotFound
        }
    }

    static func propertyListPath(forCharacterSet characterSet: CharacterSet,
                                  andType type: PropertyListType) -> URL? {
        let name = characterSet.rawValue.lowercased() + "-" + type.nameForFilename()
        return Bundle.framework.url(forResource: name, withExtension: "plist")
    }
    
}

extension PropertyListSerialization {
    
    enum PropertyListSerializationError: Error {
        case UnexpectedPropertylistContentError
    }
    
    static func read<T>(at path: URL) throws -> T {
        let data = try Data(contentsOf: path)
        let plist = try self.propertyList(from: data, options: [], format: nil)
        
        if let result = plist as? T {
            return result
        } else {
            throw PropertyListSerializationError.UnexpectedPropertylistContentError
        }
    }
    
}
