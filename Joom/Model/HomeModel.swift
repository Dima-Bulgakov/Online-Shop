//
//  HomeModel.swift
//  Joom
//
//  Created by Dima on 27.07.2023.
//

import SwiftUI

struct HomeModel: Identifiable {
    let id = UUID()
    let image: Image
    let discount: Int
    let price: Int
    let rate: Double
}

let homeData: [HomeModel] = [HomeModel(image: Image("1"), discount: 70, price: 159, rate: 4.6),
                             HomeModel(image: Image("2"), discount: 49, price: 245, rate: 4.6),
                             HomeModel(image: Image("3"), discount: 61, price: 98, rate: 4.0),
                             HomeModel(image: Image("4"), discount: 71, price: 382, rate: 4.8),
                             HomeModel(image: Image("5"), discount: 70, price: 241, rate: 4.5),
                             HomeModel(image: Image("6"), discount: 36, price: 285, rate: 4.6),
                             HomeModel(image: Image("7"), discount: 52, price: 120, rate: 4.7),
                             HomeModel(image: Image("8"), discount: 68, price: 411, rate: 4.3),
                             HomeModel(image: Image("9"), discount: 51, price: 245, rate: 4.2),
                             HomeModel(image: Image("10"), discount: 37, price: 192, rate: 4.1),
                             HomeModel(image: Image("11"), discount: 71, price: 431, rate: 4.9),
                             HomeModel(image: Image("12"), discount: 70, price: 320, rate: 4.3),
]
