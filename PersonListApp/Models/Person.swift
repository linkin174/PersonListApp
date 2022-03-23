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
        for index in 0 ..< DataManager.shared.names.count {
            let person = Person(
                firstName: DataManager.shared.names[index],
                lastName: DataManager.shared.surnames[index],
                contacts: (email: DataManager.shared.emails[index],
                           phoneNumber: DataManager.shared.phones[index]))
            persons.append(person)
        }
        return persons
    }
}
