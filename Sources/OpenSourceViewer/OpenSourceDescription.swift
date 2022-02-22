//
//  OpenSourceDescription.swift
//  
//
//  Created by William Taylor on 14/10/19.
//

import Foundation

/// A description of all of the open source resources utilized by a project.
public struct OpenSourceDescription: Codable {
    
    // MARK: Properties
    
    let packages: [OpenSourcePackage]
    
    // MARK: Init
    
    /// Initializes a `OpenSourceDescription` with the contents of a `URL`.
    /// - Parameter url: The `URL` to read.
    /// - Throws: An error in the Cocoa domain, if `url` cannot be read.
    public init(contentsOf url: URL) throws {
        let jsonData = try Data(contentsOf: url)
        let description = try JSONDecoder().decode(Self.self, from: jsonData)
        self = description
    }
    
    @available(*, deprecated, renamed: "init(contentsOf:)")
    public init(fromUrl url: URL) throws {
        self = try OpenSourceDescription(contentsOf: url)
    }
    
}
