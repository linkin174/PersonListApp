//
//  TabBarViewController.swift
//  PersonListApp
//
//  Created by Aleksandr Kretov on 22.03.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    //MARK: - Private Properties
    
    private var persons = Person.createPersons()
    
    //MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pushDataToDestinations()
    }
    //MARK: - Private Methods
    
    private func pushDataToDestinations() {
        guard let viewControllers = viewControllers else { return }
        for viewController in viewControllers {
            guard let navigationVC = viewController as? UINavigationController else { return }
            if let listTableVC = navigationVC.topViewController as? ListTableViewController {
                listTableVC.persons = persons
            } else if let infoTableVC = navigationVC.topViewController as? InfoTableViewController {
                infoTableVC.persons = persons
            }
        }
    }
}
