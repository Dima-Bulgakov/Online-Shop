//
//  LikeView.swift
//  Joom
//
//  Created by Dima on 27.07.2023.
//

import SwiftUI

struct LikeView: View {
    @State private var sellectedIndex: Int = 0
    private let categories = ["Товары", "Подборки", "Магазины"]
    
    var body: some View {
        NavigationView {
            VStack {
                
                ZStack(alignment: .trailing) {
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "folder.fill")
                            Text("Ищете обзоры?")
                                .fontWeight(.semibold)
                                
                        }
                        .padding(.bottom, 10)
                        
                        Text("Лента с обзорами пользователей на \nтовары переехала в разддел \"Профиль\"")
                            .font(.callout)
                            .fontWeight(.light)
                    }
                    Image(systemName: "chevron.right")
                }
                .padding()
                .background(.black.opacity(0.1))
                .cornerRadius(10)
                .padding()
                
                Spacer()
                VStack {
                    Image("favorite")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 170)
                    Text("Чтобы добавить товар в избраное")
                    Text("нажмите ")
                }
                .navigationBarTitle("Избранное", displayMode: .inline)
                Spacer()
            }
        }
    }
}

struct LikeView_Previews: PreviewProvider {
    static var previews: some View {
        LikeView()
    }
}
