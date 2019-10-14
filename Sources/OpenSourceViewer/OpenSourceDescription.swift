//
//  File.swift
//  
//
//  Created by William Taylor on 14/10/19.
//

import Foundation

struct OpenSourceDescription: Codable {
    
    let packages: [OpenSourcePackage]
    
    init(from url: URL) throws {
        let jsonData = try Data(contentsOf: url)
        let description = try JSONDecoder().decode(Self.self, from: jsonData)
        self = description
    }
    
}

struct OpenSourcePackage: Codable {
    
    let name: String
    
    let license: String
    
}
