//
//  SearchModel.swift
//  Joom
//
//  Created by Dima on 27.07.2023.
//

import SwiftUI

struct SearchModel: Identifiable {
    let id = UUID()
    let name: String
    let image: Image
}

let searchData: [SearchModel] = [SearchModel(name: "Женская мода", image: Image("woman")),
                                 SearchModel(name: "Электроника", image: Image("electronic")),
                                 SearchModel(name: "Чехлы для смартфонов", image: Image("case")),
                                 SearchModel(name: "Красота", image: Image("beauty")),
                                 SearchModel(name: "Здоровье", image: Image("health")),
                                 SearchModel(name: "Товары для взрослых", image: Image("adult")),
                                 SearchModel(name: "Мужская одежда", image: Image("man")),
                                 SearchModel(name: "Товары для дома", image: Image("house")),
                                 SearchModel(name: "Обувь", image: Image("shoes")),
                                 SearchModel(name: "Автомобили и мотоциклы", image: Image("car")),
                                 SearchModel(name: "Спорт и отдых", image: Image("sport")),
                                 SearchModel(name: "Сумки и чемоданы", image: Image("bags")),
                                 SearchModel(name: "Детские товары", image: Image("child")),
                                 SearchModel(name: "Украшение и бижутерия", image: Image("jewerly")),
                                 SearchModel(name: "Хобби и творчество", image: Image("art")),
                                 SearchModel(name: "Строительство и ремонт", image: Image("build")),
                                 SearchModel(name: "Товары для животных", image: Image("animal")),
                                 SearchModel(name: "Канцелярия", image: Image("chancery")),
                                 SearchModel(name: "Дача, сад и огород", image: Image("garden")),
                                 SearchModel(name: "Праздники", image: Image("celebration")),
                                 SearchModel(name: "Часы", image: Image("watch")),
]
