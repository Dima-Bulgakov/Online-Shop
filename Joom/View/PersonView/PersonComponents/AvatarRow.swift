//
//  AvatarRow.swift
//  Joom
//
//  Created by Dima on 28.07.2023.
//

import SwiftUI

struct AvatarRow: View {
    let avatar: PersonModel
    
    var body: some View {
        VStack {
            HStack {
                avatar.image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                    .padding(.trailing)
                Text(avatar.name)
                    .font(.title2)
                Spacer()
            }
            Divider()
            HStack {
                VStack {
                    Text("\(avatar.views)")
                    Text("обзоров")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
                VStack {
                    Text("\(avatar.followers)")
                    Text("Подписчиков")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
                VStack {
                    Text("\(avatar.subscribes)")
                    Text("Подписок")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .padding(.horizontal, 30)
            
            Button {} label: {
                ZStack {
                    Rectangle()
                        .frame(height: 40)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                    Text("К обзорам лучших товаров")
                        .foregroundColor(.white)
                }
                .padding(.vertical, 10)
            }
            .buttonStyle(.borderless)
            .frame(maxWidth: .infinity)
        }
    }
}

struct AvatarRow_Previews: PreviewProvider {
    static var previews: some View {
        AvatarRow(avatar: avatarData[0].section[0])
    }
}
