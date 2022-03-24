//
//  DataManager.swift
//  PersonListApp
//
//  Created by Aleksandr Kretov on 22.03.2022.
//

class DataManager {
    static let shared = DataManager()
    let names = ["Alex", "Tim", "Phil", "Alison", "Robert", "Amanda", "Andrew", "Samantha", "Stephany", "Rebecca"].shuffled()
    let surnames = ["Smith", "Cook", "Janson", "Peterson", "Pennyworth", "Blake", "Williams", "Gibson", "Martin", "Jordan"].shuffled()
    let emails = generateEmails().shuffled()
    let phones = generatePhones().shuffled()
    var personsCount: Int {
        names.count
    }
    private init() {}
}

extension DataManager {
    class func generatePhones() -> [String] {
        var phones: [String] = []
        for _ in 1...10 {
            let randomNumber = Int.random(in: 500000000...999999999)
            var number = String(randomNumber)
            let firstDashIndex = number.index(number.startIndex, offsetBy: 3)
            let secondDashIndex = number.index(firstDashIndex , offsetBy: 4)
            number.insert("-", at: firstDashIndex)
            number.insert("-", at: secondDashIndex)
            phones.append(number)
        }
        return phones
    }
    
    class func generateEmails() -> [String] {
        var emails: [String] = []
        for _ in 1...10 {
            let providers = ["gmail.com", "hotmail.com", "icloud.com",
                             "live.com", "yahoo.com", "livemail.com"]
            let name = randomString(length: Int.random(in: 6...8))
            let email = "\(name)@\(providers.randomElement() ?? "none")"
            emails.append(email)
        }
        return emails
    }
    
    class func randomString(length: Int) -> String {
      let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
      return String((0..<length).map{ _ in letters.randomElement()! })
    }
}
