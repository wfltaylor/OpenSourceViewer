//
//  OpenSourceDetailViewController.swift
//  
//
//  Created by William Taylor on 14/10/19.
//

import UIKit


class OpenSourceDetailViewController: UIViewController {
    
    let package: OpenSourcePackage
    
    init(package: OpenSourcePackage) {
        self.package = package
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.title = package.name
        
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        let contentLabel = UILabel()
        contentLabel.text = package.license
        contentLabel.numberOfLines = 0
        contentLabel.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentLabel)
        
        contentLabel.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentLabel.leftAnchor.constraint(equalTo: scrollView.leftAnchor).isActive = true
        contentLabel.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        contentLabel.rightAnchor.constraint(equalTo: scrollView.rightAnchor).isActive = true
        contentLabel.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor).isActive = true
        contentLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
    }
    
}
