//
//  OpenSourceViewController.swift
//  
//
//  Created by William Taylor on 14/10/19.
//

import UIKit

public class OpenSourceViewController: UITableViewController {
    
    let openSourceDescription: OpenSourceDescription
    
    public init(openSourceDescription: OpenSourceDescription) {
        self.openSourceDescription = openSourceDescription
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        if navigationItem.title == nil {
            navigationItem.title = "Open Source"
        }
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return openSourceDescription.packages.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = openSourceDescription.packages[indexPath.item].name
        
        return cell
    }
    
    override public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(OpenSourceDetailViewController(package: openSourceDescription.packages[indexPath.item]), animated: true)
    }
    
}
