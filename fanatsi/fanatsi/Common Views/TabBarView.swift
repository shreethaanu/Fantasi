//
//  TabBarView.swift
//  fanatsi
//
//  Created by ShreeThaanu on 05/04/23.
//

import SwiftUI

struct TabBarView: View {
    @State var imageName = "star"
    fileprivate func tabBarMenu(name: String) -> Button<some View> {
        return Button(action: {
            print("button pressed")
            
        }) {
            Image(systemName: name)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(Color.red)
                .frame(width: 25, height: 25)
                .hoverEffect(.lift)
        }
    }
    
    var body: some View {
        HStack(spacing: 50) {
            tabBarMenu(name: "person")
            tabBarMenu(name: "infinity")
            tabBarMenu(name: "heart")
            tabBarMenu(name: "message")
        }
        .padding(.horizontal, 50.0)
        Spacer()
    }
}
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
