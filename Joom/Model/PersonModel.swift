//
//  PersonModel.swift
//  Joom
//
//  Created by Dima on 28.07.2023.
//

import SwiftUI

struct PersonSection: Identifiable {
    let id = UUID()
    let name: String
    let section: [PersonModel]
}

struct PersonModel: Identifiable {
    let id = UUID()
    let image: Image
    let name: String
    
    var views: Int
    var followers: Int
    var subscribes: Int
    
    init(image: Image, name: String) {
        self.image = image
        self.name = name
        self.views = 0 // Значение по умолчанию
        self.followers = 0 // Значение по умолчанию
        self.subscribes = 0 // Значение по умолчанию
    }
    
    init(image: Image, name: String, views: Int, followers: Int, subscribes: Int) {
        self.image = image
        self.name = name
        self.views = views
        self.followers = followers
        self.subscribes = subscribes
    }
}

let avatarData = [PersonSection(name: "", section: [PersonModel(image: Image("avatar"), name: "Madison Bear", views: 29, followers: 67, subscribes: 85)])
]

let personData = [PersonSection(name: "Покупки",
                                section: [PersonModel(image: Image(systemName: "list.bullet.rectangle.fill"),
                                                      name: "Мои заказы"),
                                          PersonModel(image: Image(systemName: "heart.fill"),
                                                      name: "Избраное"),
                                ]),
                  PersonSection(name: "Коммуникации",
                                section: [PersonModel(image: Image(systemName: "bell.fill"),
                                                      name: "Уведомление"),
                                          PersonModel(image: Image(systemName: "phone.bubble.left.fill"),
                                                      name: "Чат со службой поддержки"),
                                          PersonModel(image: Image(systemName: "questionmark.circle.fill"),
                                                      name: "Часто задаваемые вопросы")
                                ]),
                  PersonSection(name: "Акции и скидки",
                                section: [PersonModel(image: Image(systemName: "percent"),
                                                      name: "Промокод")
                                ]),
                  PersonSection(name: "Личная информация",
                                section: [PersonModel(image: Image(systemName: "mappin"),
                                                      name: "Мои адреса"),
                                          PersonModel(image: Image(systemName: "creditcard.fill"),
                                                      name: "Мои карты"),
                                          PersonModel(image: Image(systemName: "suitcase.fill"),
                                                      name: "Персональные данные")
                                ]),
                  PersonSection(name: "Приложение",
                                section: [PersonModel(image: Image(systemName: "lock.fill"),
                                                      name: "Условия и конфидециальность")
                                ]),
                  PersonSection(name: "",
                                section: [PersonModel(image: Image(systemName: "rectangle.portrait.and.arrow.right"),
                                                      name: "Выйти")
                                ]),
]
