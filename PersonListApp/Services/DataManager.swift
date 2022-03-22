//
//  DataManager.swift
//  PersonListApp
//
//  Created by Aleksandr Kretov on 22.03.2022.
//

class DataManager {
    static let shared = DataManager()
    let names = ["Alex", "Tim", "Phil", "Alison", "Robert", "Amanda", "Andrew", "Samantha", "Stephany", "Rebecca"]
    let surnames = ["Smith", "Cook", "Janson", "Peterson", "Pennyworth", "Blake", "Williams", "Gibson", "Martin", "Jordan"]
    let emails = generateEmails(10, nameLenght: 10)
    let phones = generatePhones()
    
    class func generatePhones() -> [String] {
        var phones: [String] = []
        for _ in 1...10 {
//            let randomNumber = Int.random(in: 000...999)
            let number = "\(Int.random(in: 000...999))-\(Int.random(in: 100...999))-\(Int.random(in: 100...999))"
            phones.append(String(number))
        }
        return phones
    }
    
    class func generateEmails(_ quantity: Int, nameLenght: Int) -> [String] {
        var emails: [String] = []
        for _ in 1...quantity {
            let providers = ["gmail.com", "hotmail.com", "icloud.com", "live.com", "yahoo.com", "livemail.com"]
            let name = randomString(length: nameLenght)
            let email = "\(name)@\(providers.randomElement() ?? "email@gmail.com")"
            emails.append(email)
        }
        return emails
    }
    
    class func randomString(length: Int) -> String {
      let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
      return String((0..<length).map{ _ in letters.randomElement()! })
    }
}
