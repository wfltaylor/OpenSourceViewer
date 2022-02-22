//
//  OpenSourceViewController.swift
//  
//
//  Created by William Taylor on 14/10/19.
//

import UIKit

/// A view controller that provides an interface for viewing the licenses of open source resouces.
/// Should only ever be presented in a `UINavigationController`.
public class OpenSourceViewController: UITableViewController {
    
    // MARK: Properties
    
    private let cellReuseIdentifier = "cell"
    
    let openSourceDescription: OpenSourceDescription
    
    /// Initializes an `OpenSourceViewController` with the description the view controller should use.
    public init(openSourceDescription: OpenSourceDescription) {
        self.openSourceDescription = openSourceDescription
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Init
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
        if navigationItem.title == nil {
            navigationItem.title = "Open Source"
        }
    }
    
    // MARK: Table View
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return openSourceDescription.packages.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
        cell.textLabel?.text = openSourceDescription.packages[indexPath.item].name
        
        return cell
    }
    
    override public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = OpenSourceDetailViewController(package: openSourceDescription.packages[indexPath.item])
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
}
