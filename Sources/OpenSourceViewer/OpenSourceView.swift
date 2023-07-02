//
//  OpenSourceView.swift
//  
//
//  Created by William Taylor on 2/7/2023.
//

import Foundation
import SwiftUI

public struct OpenSourceView: View {
    
    // MARK: Properties
    
    let description: OpenSourceDescription
    
    // MARK: Init
    
    public init(description: OpenSourceDescription) {
        self.description = description
    }

    // MARK: Body
    
    public var body: some View {
        OpenSourceViewControllerRepresentable(description: description)
            .id(description)
    }
    
}

// MARK: - Open Source View Controller Representable

private struct OpenSourceViewControllerRepresentable: UIViewControllerRepresentable {
    
    let description: OpenSourceDescription
    
    func makeUIViewController(context: Context) -> OpenSourceViewController {
        return OpenSourceViewController(openSourceDescription: description)
    }
    
    func updateUIViewController(_ uiViewController: OpenSourceViewController, context: Context) { }
    
}
