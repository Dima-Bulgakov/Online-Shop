//
//  SettingsRow.swift
//  Joom
//
//  Created by Dima on 28.07.2023.
//

import SwiftUI

struct SettingsRow: View {
    let settingModel: SettingsModel
    
    var body: some View {
        HStack {
            settingModel.image
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .padding(.trailing, 10)
                
            Text(settingModel.name)
            Spacer()
            Button {} label: {
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
        }
    }
}

struct SettingsRowDescription: View {
    let settingModel: SettingsModel
    
    var body: some View {
        HStack {
            settingModel.image
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .padding(.trailing, 10)
                
            VStack(alignment: .leading) {
                Text(settingModel.name)
                Text(settingModel.description)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            Button {} label: {
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
        }
    }
}

struct SettingsRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowDescription(settingModel: settingsData[1])
    }
}
