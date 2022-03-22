//
//  Person.swift
//  PersonListApp
//
//  Created by Aleksandr Kretov on 22.03.2022.
//

import Foundation

struct Person {
    let firstName: String
    let lastName: String
    let email: String
    let phoneNumber: String

    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func createPersons(_ quantity: Int) -> [Person] {
        let firstNames = DataManager.shared.names.shuffled()
        let lastNames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let telephoneNumbers = DataManager.shared.phones.shuffled()
        
        var persons: [Person] = []
        for index in 0..<firstNames.count {
            let person =
            Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                email: emails[index],
                phoneNumber: telephoneNumbers[index]
            )
            persons.append(person)
        }
        return persons
    }
}

    
    

