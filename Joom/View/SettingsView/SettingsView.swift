//
//  SettingsView.swift
//  Joom
//
//  Created by Dima on 28.07.2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(settingsData.indices) { row in
                    if row == 1 || row == 2 {
                        SettingsRowDescription(settingModel: settingsData[row])
                    } else {
                        SettingsRow(settingModel: settingsData[row])
                    }
                    
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Настройки", displayMode: .inline)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
