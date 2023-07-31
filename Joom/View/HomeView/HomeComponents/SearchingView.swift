//
//  SearchingView.swift
//  Joom
//
//  Created by Dima on 27.07.2023.
//

import SwiftUI

struct SearchingView: View {
    @State private var search = ""
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.black.opacity(0.3))
            TextField("Поиск", text: $search)
        }
        .padding(.all, 10)
        .background(.black.opacity(0.1))
        .cornerRadius(15)
        .padding()
    }
}

struct SearchingView_Previews: PreviewProvider {
    static var previews: some View {
        SearchingView()
    }
}
