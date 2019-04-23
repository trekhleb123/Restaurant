//
//  CategoryTableViewController.swift
//  Restaurant
//
//  Created by Alona Trekhlib on 4/20/19.
//  Copyright © 2019 Alona Trekhlib. All rights reserved.
//

import UIKit

class CategoryTableViewController: UITableViewController {

    let menuController =  MenuController()
    var categories =  [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MenuController.shared.fetchCategories { (categories) in
            if let categories = categories {
                self.updateUI(with: categories)
            }
        }
    }

    func updateUI(with categories: [String]) {
        DispatchQueue.main.async {
            self.categories = categories
            self.tableView.reloadData()
        }
    }
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return categories.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCellIdentifier", for: indexPath)
        configure(cell, forItemAt: indexPath)
        return cell
    }
    
    func configure(_ cell: UITableViewCell, forItemAt indexPath: IndexPath) {
        let categoryString =  categories[indexPath.row]
        cell.textLabel?.text = categoryString.capitalized
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MenuSegue" {
            let menuTableViewController = segue.destination as! MenuTableViewController
            let index = tableView.indexPathForSelectedRow!.row
            menuTableViewController.category = categories[index]
        }
    }


}
