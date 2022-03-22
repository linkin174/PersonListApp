//
//  TabBarViewController.swift
//  PersonListApp
//
//  Created by Aleksandr Kretov on 22.03.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    private var persons = Person.createPersons(10)

    override func viewDidLoad() {
        super.viewDidLoad()
        setDestinations()
    }

    private func setDestinations() {
        guard let viewControllers = viewControllers else { return }
        for viewController in viewControllers {
            guard let navigationVC = viewController as? UINavigationController else { return }
            if let listTableVC = navigationVC.topViewController as? ListTableViewController {
                listTableVC.persons = persons
            } else if let infoTableVC = navigationVC.topViewController as? ContactInfoTableViewController {
                infoTableVC.persons = persons
            }
        }
    }
}
