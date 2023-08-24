//
//  User.swift
//  AboutMeApp
//
//  Created by lsvard on 24.08.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "1",
            password: "1",
            person: Person.getPerson()
        )
    }
}





