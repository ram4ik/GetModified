//
//  MenuBar.swift
//  GetModified
//
//  Created by ramil on 11.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct MenuBar: View {
    @State private var selected = 0
    
    var body: some View {
        HStack {
            VStack {
                Button(action: {
                    self.selected = 1
                }) {
                    Image(systemName: "rectangle.stack.person.crop")
                        .foregroundColor(self.selected == 1 ? .black : .gray)
                }
                Text("Portfolio")
                    .foregroundColor(self.selected == 1 ? .black : .gray)
            }
            Spacer()
            VStack {
                Button(action: {
                    self.selected = 2
                }) {
                    Image(systemName: "chart.bar")
                        .foregroundColor(self.selected == 2 ? .black : .gray)
                }
                Text("Prices")
                    .foregroundColor(self.selected == 2 ? .black : .gray)
            }
            Spacer()
            VStack {
                Button(action: {
                    self.selected = 0
                }) {
                    VStack {
                        Image(systemName: "arrow.right.arrow.left")
                            .padding(15)
                            .foregroundColor(.white)
                            .background(Color("Green"))
                            .cornerRadius(30)
                    }
                }
            }
            
            Spacer()
            VStack {
                Button(action: {
                    self.selected = 3
                }) {
                    Image(systemName: "creditcard")
                        .foregroundColor(self.selected == 3 ? .black : .gray)
                }
                Text("Card")
                    .foregroundColor(self.selected == 3 ? .black : .gray)
            }
            Spacer()
            VStack {
                Button(action: {
                    self.selected = 4
                }) {
                    Image(systemName: "gear")
                        .foregroundColor(self.selected == 4 ? .black : .gray)
                }
                Text("Settings")
                    .foregroundColor(self.selected == 4 ? .black : .gray)
            }
        }.padding(.horizontal)
    }
}

struct MenuBar_Previews: PreviewProvider {
    static var previews: some View {
        MenuBar()
    }
}
