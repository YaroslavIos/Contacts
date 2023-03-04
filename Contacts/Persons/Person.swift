//
//  Person.swift
//  Contacts
//
//  Created by Ярослав Любиченко on 2.3.2023.
//

import Foundation

struct Person: Hashable {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    static func getContact() -> [Person] {
        [
        Person(
            name: DataStore.init().names.randomElement() ?? "",
            surname: DataStore.init().surnames.randomElement() ?? "",
            email: DataStore.init().emails.randomElement() ?? "",
            phoneNumber: DataStore.init().phoneNumbers.randomElement() ?? ""
        ),
        Person(
            name: DataStore.init().names.randomElement() ?? "",
            surname: DataStore.init().surnames.randomElement() ?? "",
            email: DataStore.init().emails.randomElement() ?? "",
            phoneNumber: DataStore.init().phoneNumbers.randomElement() ?? ""
        ),
        Person(
            name: DataStore.init().names.randomElement() ?? "",
            surname: DataStore.init().surnames.randomElement() ?? "",
            email: DataStore.init().emails.randomElement() ?? "",
            phoneNumber: DataStore.init().phoneNumbers.randomElement() ?? ""
        ),
        Person(
            name: DataStore.init().names.randomElement() ?? "",
            surname: DataStore.init().surnames.randomElement() ?? "",
            email: DataStore.init().emails.randomElement() ?? "",
            phoneNumber: DataStore.init().phoneNumbers.randomElement() ?? ""
        ),
        Person(
            name: DataStore.init().names.randomElement() ?? "",
            surname: DataStore.init().surnames.randomElement() ?? "",
            email: DataStore.init().emails.randomElement() ?? "",
            phoneNumber: DataStore.init().phoneNumbers.randomElement() ?? ""
        ),
        Person(
            name: DataStore.init().names.randomElement() ?? "",
            surname: DataStore.init().surnames.randomElement() ?? "",
            email: DataStore.init().emails.randomElement() ?? "",
            phoneNumber: DataStore.init().phoneNumbers.randomElement() ?? ""
        ),
        Person(
            name: DataStore.init().names.randomElement() ?? "",
            surname: DataStore.init().surnames.randomElement() ?? "",
            email: DataStore.init().emails.randomElement() ?? "",
            phoneNumber: DataStore.init().phoneNumbers.randomElement() ?? ""
        ),
        Person(
            name: DataStore.init().names.randomElement() ?? "",
            surname: DataStore.init().surnames.randomElement() ?? "",
            email: DataStore.init().emails.randomElement() ?? "",
            phoneNumber: DataStore.init().phoneNumbers.randomElement() ?? ""
        ),
        Person(
            name: DataStore.init().names.randomElement() ?? "",
            surname: DataStore.init().surnames.randomElement() ?? "",
            email: DataStore.init().emails.randomElement() ?? "",
            phoneNumber: DataStore.init().phoneNumbers.randomElement() ?? ""
        )
        ]
    }
}
