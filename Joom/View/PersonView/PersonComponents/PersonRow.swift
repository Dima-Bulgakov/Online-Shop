//
//  PersonRow.swift
//  Joom
//
//  Created by Dima on 28.07.2023.
//

import SwiftUI

struct PersonRow: View {
    let personModel: PersonModel
    
    var body: some View {
        HStack {
            personModel.image
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .padding(.trailing, 10)
                
            Text(personModel.name)
            Spacer()
            Button {} label: {
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
        }
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(personModel: personData[0].section[0])
    }
}
