//
//  HomeView.swift
//  Joom
//
//  Created by Dima on 27.07.2023.
//

import SwiftUI

struct HomeView: View {
    
    @State private var sellectedIndex: Int = 0
    private let categories = ["Лучшие", "Акции", "Для школы"]
    
    var colums = [GridItem(.adaptive(minimum: 160), spacing: 0)]
    
    
    var body: some View {
        ZStack {
            Color(.black).opacity(0.1)
                .ignoresSafeArea()
            VStack {
                SearchingView()
                
                ScrollView {
                    LazyVGrid(columns: colums, spacing: 10) {
                        ForEach(homeData) { data in
                            ProductCard(model: data)
                        }
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
