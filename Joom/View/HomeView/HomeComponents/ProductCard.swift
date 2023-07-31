//
//  ProductCard.swift
//  Joom
//
//  Created by Dima on 27.07.2023.
//

import SwiftUI

struct ProductCard: View {
    var model: HomeModel
    @State private var isHeartRed = false
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack {
                model.image
                    .resizable()
                    .clipShape(TopRoundedCorner(radius: 20))
                    .scaledToFit()
                
                HStack {
                    ZStack {
                        Capsule()
                            .foregroundColor(Color("discount"))
                            .frame(width: 55, height: 25)
                        Text("-\(model.discount)%")
                            .foregroundColor(.white)
                            .font(.subheadline)
                    }
                    Text("\(model.price) ₴")
                        .font(.title3)
                        .fontWeight(.medium)
                    
                    Spacer()
                }
                .padding(.leading, 10)
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(Color("discount"))
                    Text(String(format: "%.1f", model.rate))
                    Spacer()
                }
                .padding(.leading, 10)
            }
            .padding(.bottom, 16)
            .background(.white)
            .cornerRadius(20)
            .frame(width: 180)
            
            Button {
                isHeartRed.toggle()
            } label: {
                Image(systemName: isHeartRed ? "heart.fill" : "heart")
                    .frame(width: 50, height: 50)
                    .font(.title)
                    .foregroundColor(isHeartRed ? .red : .black)
                    .padding(1)
                    .background(.white)
                    .clipShape(Circle())
                    .padding()
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(model: homeData[4])
    }
}

// Закругление снизу
struct TopRoundedCorner: Shape {
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.width
        let height = rect.height
        
        path.move(to: CGPoint(x: 0, y: radius))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: width, y: radius))
        path.addArc(center: CGPoint(x: width, y: radius), radius: radius, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
        path.addLine(to: CGPoint(x: width, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 0))
        path.closeSubpath()
        
        return path
    }
}





