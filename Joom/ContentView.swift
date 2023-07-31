//
//  ContentView.swift
//  Joom
//
//  Created by Dima on 26.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            CartView()
                .tabItem {
                    Image(systemName: "cart")
                }
            LikeView()
                .tabItem {
                    Image(systemName: "heart")
                }
            PersonView()
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.black) // Цвет активного TabItem
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
