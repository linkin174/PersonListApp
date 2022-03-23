//
//  Person.swift
//  PersonListApp
//
//  Created by Aleksandr Kretov on 22.03.2022.
//

struct Person {
    let firstName: String
    let lastName: String
    let contacts: (email: String, phoneNumber: String)
    var fullName: String {
        "\(firstName) \(lastName)"
    }

    static func createPersons() -> [Person] {
        var persons: [Person] = []
        for index in 0 ..< DataManager.names.count {
            let person = Person(
                firstName: DataManager.names[index],
                lastName: DataManager.surnames[index],
                contacts: (email: DataManager.emails[index],
                           phoneNumber: DataManager.phones[index]))
            persons.append(person)
        }
        return persons
    }
}
