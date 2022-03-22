//
//  DataManager.swift
//  PersonListApp
//
//  Created by Aleksandr Kretov on 22.03.2022.
//

class DataManager {
    static let names = ["Alex", "Tim", "Phil", "Alison", "Robert", "Amanda"]
    static let surnames = ["Smith", "Cook", "Janson", "Peterson", "Pennyworth", "Blake"]
    static let emails = ["peterson@apple.com", "iamtheboss@google.com", "donthurtme@yandex.ru", "somename@yahoo.com"]
    static let phones = ["89823334455", "89823334675", "89823334355", "82223334455", "89323334455", "89553334455"]
    
    static func createPersons() -> [Person] {
        var persons: [Person] = []
        for _ in 1...10 {
            persons.append(Person(firstName: names.randomElement()!,
                                  lastName: surnames.randomElement()!,
                                  email: emails.randomElement()!,
                                  telephoneNumber: phones.randomElement()!))
        }
        return persons
    }
}


