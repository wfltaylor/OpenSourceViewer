//
//  OpenSourceViewController.swift
//  
//
//  Created by William Taylor on 14/10/19.
//

import UIKit

class OpenSourceViewController: UITableViewController {
    
    let openSourceDescription: OpenSourceDescription
    
    init(openSourceDescription: OpenSourceDescription) {
        self.openSourceDescription = openSourceDescription
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        navigationItem.title = "Open Source Licenses"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return openSourceDescription.packages.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = openSourceDescription.packages[indexPath.item].name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(OpenSourceDetailViewController(package: openSourceDescription.packages[indexPath.item]), animated: true)
    }
    
}
