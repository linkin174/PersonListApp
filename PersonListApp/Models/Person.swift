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
    let telephoneNumber: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
