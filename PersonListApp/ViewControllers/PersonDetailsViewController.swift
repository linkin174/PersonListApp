//
//  PersonDetailsViewController.swift
//  PersonListApp
//
//  Created by Aleksandr Kretov on 22.03.2022.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    //MARK: - IBOutlets
    
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    
    //MARK: - Public Properties
    
    var person: Person!
    
    //MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        emailLabel.text = "Email: \(person.contacts.email)"
        phoneNumberLabel.text = "Phone Number: \(person.contacts.phoneNumber)"
    }
}
