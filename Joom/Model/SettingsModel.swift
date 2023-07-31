//
//  SettingsModel.swift
//  Joom
//
//  Created by Dima on 28.07.2023.
//

import SwiftUI

struct SettingsModel: Identifiable {
    let id = UUID()
    let image: Image
    let name: String
    let description: String
}

let settingsData = [SettingsModel(image: Image(systemName: "bell.fill"),
                                  name: "Настройка уведомлений",
                                  description: ""),
                    SettingsModel(image: Image(systemName: "dollarsign.circle.fill"),
                                  name: "Валюта",
                                  description: "Украинская гривна"),
                    SettingsModel(image: Image(systemName: "shippingbox"),
                                  name: "Показывать товары",
                                  description: "Не выбрано"),
                    SettingsModel(image: Image(systemName: "bonjour"),
                                  name: "Язык приложения",
                                  description: "Украинская"),
                    SettingsModel(image: Image(systemName: "iphone.smartbatterycase.gen2"),
                                  name: "Мои устройства",
                                  description: "Украинская"),
                    SettingsModel(image: Image(systemName: "exclamationmark.circle.fill"),
                                  name: "Сообщить об ошибке",
                                  description: "Украинская"),
]
