//
//  SearchCard.swift
//  Joom
//
//  Created by Dima on 27.07.2023.
//

import SwiftUI

struct SearchCard: View {
    
    var search: SearchModel
    
    var body: some View {
        ZStack {
            Rectangle()
                .scaledToFit()
                .cornerRadius(20)
                .foregroundColor(.white)
                
            VStack {
                search.image
                    .font(.caption2)
                Text(search.name)
                    .font(.caption2)
            }
        }
//        .shadow(radius: 3)
        .padding(.all, 5)
    }
}

struct SearchCard_Previews: PreviewProvider {
    static var previews: some View {
        SearchCard(search: searchData[0])
    }
}
