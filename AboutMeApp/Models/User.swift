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

struct Person {
    let fullName: String
    let photo: String
    let name: String
    let age: String
    let city: String
    let hobby: String
    let teacher: String
    let more: String
    
    static func getPerson() -> Person {
        Person(
            fullName: "Lada Vardanian",
            photo: "lsvard",
            name: "Лада (не авто 🥲)",
            age: "В душе мне 28 😌",
            city: "Пока еще Звенигород 🏡",
            hobby: "Плавание 🏊🏻‍♀️",
            teacher: "",
            more: """
                В 2019 освободилась от никотиновой зависимости.\n
                С 2020 придерживаюсь веганского типа питания.\n
                В 2021 получила инициацию в Духовную практику.\n
            """
        )
    }
    
//    static func getSpiritualPerson() -> Person {
//        Person(
//            fullName: "",
//            photo: "",
//            name: "La'van'ya",
//            age: "3 года",
//            city: "Москва, Бауманская",
//            hobby: "",
//            teacher: "Диди Лиламайи",
//            more: ""
//        )
//    }
}







