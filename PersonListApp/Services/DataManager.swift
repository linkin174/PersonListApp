//
//  DataManager.swift
//  PersonListApp
//
//  Created by Aleksandr Kretov on 22.03.2022.
//

class DataManager {
    static let names = ["Alex", "Tim", "Phil", "Alison", "Robert", "Amanda", "Andrew", "Samantha", "Stephany", "Rebecca"]
    static let surnames = ["Smith", "Cook", "Janson", "Peterson", "Pennyworth", "Blake", "Williams", "Gibson", "Martin", "Jordan"]
    static let emails = generateEmails(10, nameLenght: 8)
    static let phones = generatePhones()
    
    static func createPersons(_ quantity: Int) -> [Person] {
        var persons: [Person] = []
        for _ in 1...quantity {
            persons.append(Person(firstName: names.randomElement()!,
                                  lastName: surnames.randomElement()!,
                                  email: emails.randomElement()!,
                                  telephoneNumber: phones.randomElement()!))
        }
        return persons
    }
    
    class func generatePhones() -> [String] {
        var phones: [String] = []
        for _ in 1...10 {
            let randomNumber = Int.random(in: 500000000...599999999)
            phones.append(String(randomNumber))
        }
        return phones
    }
    
    class func generateEmails(_ quantity: Int, nameLenght: Int) -> [String] {
        var emails: [String] = []
        for _ in 1...quantity {
            let providers = ["gmail.com", "hotmail.com", "icloud.com", "live.com", "yahoo.com", "livemail.com"]
            let name = randomString(length: nameLenght)
            let email = "\(name)@\(providers.randomElement() ?? "email@gmai.com")"
            emails.append(email)
        }
        return emails
    }
    
    class func randomString(length: Int) -> String {
      let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
      return String((0..<length).map{ _ in letters.randomElement()! })
    }
}

