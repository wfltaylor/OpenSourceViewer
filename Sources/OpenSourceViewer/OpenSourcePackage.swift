//
//  OpenSourcePackage.swift
//  
//
//  Created by William Taylor on 22/2/2022.
//

import Foundation

/// Represents an individual open source resource
struct OpenSourcePackage: Codable {
    
    /// The name of the open source resource.
    let name: String
    
    /// The full license text of the open source resource.
    let license: String
    
}
