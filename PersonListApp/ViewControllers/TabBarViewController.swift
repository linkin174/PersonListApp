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
            if viewController.title == "first" {
                let navigationVC = viewController as? UINavigationController
                let listTableVC = navigationVC?.topViewController as? CompactInfoTableViewController
                listTableVC?.persons = persons
            } else {
                let navigationVC = viewController as? UINavigationController
                let infoTableVC = navigationVC?.topViewController as? FullInfoTableViewController
                infoTableVC?.persons = persons
            }
        }
    }
}
