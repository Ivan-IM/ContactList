//
//  Person.swift
//  ContactList
//
//  Created by Иван Маришин on 08.06.2021.
//

import Foundation

struct Person {
    let firstName: String
    let lastName: String
    let phone: Int
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

extension Person {
    static func getPersonList () -> [Person] {
        [
            Person(firstName: "Alexander", lastName: "Pushkin", phone: 2355647, email: "ladykiller@mail.ru"),
            Person(firstName: "Lev", lastName: "Tolstoy", phone: 2364577, email: "war&peace@mail.ru"),
            Person(firstName: "Nikolay", lastName: "Gogol", phone: 3463422, email: "deadSoul@mail.ru"),
            Person(firstName: "Mikhail", lastName: "Bulgakov", phone: 1246754, email: "master@mail.ru"),
            Person(firstName: "Mikhail", lastName: "Lermontov", phone: 5646654, email: "borodino@mail.ru"),
            Person(firstName: "Sergey", lastName: "Esenin", phone: 2358738, email: "badboy@mail.ru"),
            Person(firstName: "Vladimir", lastName: "Mayakovsky", phone: 2345656, email: "pasportman@mail.ru")
        ]
    }
}
