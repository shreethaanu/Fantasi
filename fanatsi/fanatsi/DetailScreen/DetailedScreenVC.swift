//
//  DetailedScreenVC.swift
//  fanatsi
//
//  Created by ShreeThaanu on 06/04/23.
//

import SwiftUI

struct DetailedScreenVC: View {
    var body: some View {
        VStack{
            Image("largerImage")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(30)
            
            Text("Shree Thaanu")
                .foregroundColor(Color.white)
            Spacer()
        }
        .padding(20)
        .frame(maxHeight: .infinity, alignment: .bottom)
        .background(LinearGradient(gradient: Gradient(colors: [Color.init(#colorLiteral(red: 0.05965987593, green: 0.001901586424, blue: 0.128074944, alpha: 1)), Color.init(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))]), startPoint: .bottom, endPoint: .top))
    }
}
struct DetailedScreenVC_Previews: PreviewProvider {
    static var previews: some View {
        DetailedScreenVC()
    }
}
