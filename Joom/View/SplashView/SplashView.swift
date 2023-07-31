//
//  SplashView.swift
//  Joom
//
//  Created by Dima on 31.07.2023.
//

import SwiftUI


struct SplashView: View {
    
    @State private var isActive = false
    @State private var size = 1.0
    @State private var opasity = 0.5
    
    var body: some View {
        
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    ZStack {
//                        Color("discount")
                        Image("splashScreen")
                            .resizable()
                            .scaledToFill()
                        .offset(y: -20)
                    }
                }
                .scaleEffect(size)
                .opacity(opasity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 1.2
                        self.opasity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
