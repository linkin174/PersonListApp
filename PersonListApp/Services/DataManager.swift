//
//  DataManager.swift
//  PersonListApp
//
//  Created by Aleksandr Kretov on 22.03.2022.
//

class DataManager {
    static let names = ["Alex", "Tim", "Phil", "Alison", "Robert", "Amanda", "Andrew", "Samantha", "Stephany", "Rebecca"].shuffled()
    static let surnames = ["Smith", "Cook", "Janson", "Peterson", "Pennyworth", "Blake", "Williams", "Gibson", "Martin", "Jordan"].shuffled()
    static let emails = generateEmails().shuffled()
    static let phones = generatePhones().shuffled()
}

extension DataManager {
    class func generatePhones() -> [String] {
        var phones: [String] = []
        for _ in names {
            let randomNumber = Int.random(in: 500000000...999999999)
            var string = String(randomNumber)
            var offset = 3
            while offset <= 7 {
                let index = string.index(string.startIndex, offsetBy: offset)
                string.insert("-", at: index)
                offset += 4
            }
            phones.append(String(string))
        }
        return phones
    }
    
    class func generateEmails() -> [String] {
        var emails: [String] = []
        for _ in names {
            let providers = ["gmail.com", "hotmail.com", "icloud.com", "live.com", "yahoo.com", "livemail.com"]
            let name = randomString(length: Int.random(in: 6...8))
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
