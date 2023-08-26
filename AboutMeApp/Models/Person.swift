//
//  Person.swift
//  AboutMeApp
//
//  Created by lsvard on 24.08.2023.
//

struct Person {
    let fullName: String
    let photo: String
    let name: String
    let age: String
    let city: String
    let hobby: String
    
    static func getPerson() -> Person {
        Person(
            fullName: "Lada Vardanian", 
            photo: "lsvard",
            name: "Лада (не авто 🥲)",
            age: "В душе мне 28 😌",
            city: "Пока еще Звенигород 🏡",
            hobby: "Плавание 🏊🏻‍♀️"
        )
    }
}

