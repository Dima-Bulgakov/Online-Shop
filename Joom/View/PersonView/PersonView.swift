//
//  PersonView.swift
//  Joom
//
//  Created by Dima on 27.07.2023.
//

import SwiftUI

struct PersonView: View {
    @State var singleSection: UUID?
    
    var body: some View {
        NavigationView {
            VStack {
                List(selection: $singleSection) {
                    AvatarRow(avatar: avatarData[0].section[0])
                    ForEach(personData) { section in
                        Section(header: Text("\(section.name)")) {
                            ForEach(section.section) { row in
                                PersonRow(personModel: row)
                            }
                        }
                    }
                }.listStyle(GroupedListStyle())
                                
                .navigationBarTitle("Профиль", displayMode: .inline)
                .toolbar {
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Image(systemName: "gearshape.fill")
                            .foregroundColor(.black)
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView()
    }
}
