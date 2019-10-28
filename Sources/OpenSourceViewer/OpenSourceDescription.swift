//
//  File.swift
//  
//
//  Created by William Taylor on 14/10/19.
//

import Foundation

public struct OpenSourceDescription: Codable {
    
    let packages: [OpenSourcePackage]
    
    public init(fromUrl url: URL) throws {
        let jsonData = try Data(contentsOf: url)
        let description = try JSONDecoder().decode(Self.self, from: jsonData)
        self = description
    }
    
}

struct OpenSourcePackage: Codable {
    
    let name: String
    
    let license: String
    
}
