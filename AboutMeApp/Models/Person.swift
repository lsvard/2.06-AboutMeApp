//
//  Person.swift
//  AboutMeApp
//
//  Created by lsvard on 24.08.2023.
//

struct Person {
    let name: String
    let age: String
    let city: String
    let ambition: String
    
    static func getPerson() -> Person {
        Person(
            name: "Lada (not a car﹗)",
            age: "28 in my soul 😌",
            city: "Zvenigirod, but moving soon 🧳 to my own flat 🏡",
            ambition: "Middle IOS-developer in 2024 😎")
    }
}

