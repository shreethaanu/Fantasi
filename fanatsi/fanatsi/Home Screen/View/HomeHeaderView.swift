//
//  HomeHeaderView.swift
//  fanatsi
//
//  Created by ShreeThaanu on 05/04/23.
//


import SwiftUI

struct homeHeaderView: View {
    @State private var isBlinking: Bool = true
    var body: some View {
        HStack(){
            Image("profileIcon")
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(50)
            VStack(spacing: 10) {
                Text("ShreeThaanu")
                    .padding(.leading)
                    .font(.headline)
                HStack{
                    Text("Mobile App developer")
                        .font(.body)
                        .fontWeight(.regular)
                        .padding(.leading)
                        .multilineTextAlignment(.leading)
                }
                .padding(.horizontal, 0.0)
            }
        }
        .padding(.leading)
        .shadow(radius: 5.0)
    }
}
struct homeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        homeHeaderView()
    }
}
