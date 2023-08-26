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
            more: ""
        )
    }
    
    static func getSpiritualPerson() -> Person {
        Person(
            fullName: "Lada Vardanian",
            photo: "lsvard",
            name: "La'van'ya",
            age: "3 года",
            city: "Москва, Бауманская 🏡",
            hobby: "Каушики",
            teacher: "Диди Лиламайи",
            more: ""
        )
    }
    
    static func getMore() {
        Person(
            fullName: "",
            photo: "",
            name: "",
            age: "",
            city: "",
            hobby: "",
            teacher: "",
            more: """
            2019 - Освободилась от никотиновой зависимости\n
            2020 - После просмотра фильма "Доминион" перешла на веганство\n
            2021 - Получила инициауцию в Духовной практике\n
            """)
    }
}

