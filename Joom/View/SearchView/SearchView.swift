//
//  SearchView.swift
//  Joom
//
//  Created by Dima on 27.07.2023.
//

import SwiftUI

struct SearchView: View {
    var columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack {
            Color(.black).opacity(0.1)
                .ignoresSafeArea()
            VStack {
                SearchingView()
                ScrollView(.vertical) { // Установите .vertical для вертикального скроллинга
                    LazyVGrid(columns: columns, spacing: 0) { // Добавьте spacing для разделения ячеек
                        ForEach(searchData) { item in
                            SearchCard(search: item)
                        }
                    }
                }
            }
        }
    }
}





struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
