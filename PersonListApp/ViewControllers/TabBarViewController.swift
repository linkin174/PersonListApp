//
//  TabBarViewController.swift
//  PersonListApp
//
//  Created by Aleksandr Kretov on 24.03.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    //MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pushDataToDestinations()
    }
    //MARK: - Private Methods
    
    private func pushDataToDestinations() {
        guard let listTableVC = viewControllers?.first as? ListTableViewController else { return }
        guard let infoTableVC = viewControllers?.last as? InfoTableViewController else { return }
        
        let persons = Person.createPersons()
        
        listTableVC.persons = persons
        infoTableVC.persons = persons
    }
}
