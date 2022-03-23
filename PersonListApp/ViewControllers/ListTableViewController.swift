//
//  CompactInfoTableViewController.swift
//  PersonListApp
//
//  Created by Aleksandr Kretov on 22.03.2022.
//

import UIKit

class ListTableViewController: UITableViewController {
    var persons: [Person] = []
    override func viewDidLoad() {
        super.viewDidLoad()
//        debugPrint(persons)
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "compactInfo", for: indexPath)
        let contact = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailVC = segue.destination as? PersonDetailsViewController else { return }
        personDetailVC.person = sender as? Person
    }
}

extension ListTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = persons[indexPath.row]
        performSegue(withIdentifier: "showDetailedInfo", sender: person)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }
}

