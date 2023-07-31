//
//  EmptyView.swift
//  Joom
//
//  Created by Dima on 29.07.2023.
//

import SwiftUI

struct EmptyView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("emptyCart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 170)
                Text("Ваша корзина пуста")
                    .padding(.vertical)
                
                NavigationLink {} label: {
                    Text("Продолжить покупки")
                        .foregroundColor(.black)
                        .font(.subheadline)
                        .padding(10)
                        .padding(.horizontal, 12)
                        .background(.black.opacity(0.1))
                        .clipShape(Capsule())
                }
            }
            .navigationBarTitle("Моя корзина", displayMode: .inline)
            .toolbar {
                Button {} label: {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.gray)
                }
                Button {} label: {
                    Image(systemName: "trash.fill")
                        .foregroundColor(.gray)
                }
            }
        }
    }
}

struct EmptyView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
