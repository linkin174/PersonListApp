//
//  FullInfoTableViewController.swift
//  PersonListApp
//
//  Created by Aleksandr Kretov on 22.03.2022.
//

import UIKit

class InfoTableViewController: UITableViewController {
    //MARK: - Public Properties
    
    var persons: [Person] = []
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Mirror(reflecting: persons[section].contacts).children.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath)
        let contact = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = contact.contacts.phoneNumber
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = contact.contacts.email
            content.image = UIImage(systemName: "mail")
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
