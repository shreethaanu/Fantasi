//
//  ContentView.swift
//  fanatsi
//
//  Created by ShreeThaanu on 05/04/23.
//

import SwiftUI


struct onBoardingVC: View {
    @State var animateTrigger = true
    var body: some View {
        NavigationView {
            VStack {
                Image("logo")
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .padding(.all)
                    .animation(.easeIn(duration: 0.3))
                    .shineEffect(animationTrigger: $animateTrigger)

                Text("Find that Alien")
                    .foregroundColor(Color.gray)
                    .bold()
                    .font(.title)
                    .bold()
                    .padding(.horizontal)
                    .animation(.linear(duration: 0.6))
                Spacer()

                NavigationLink(destination: HomeVC().navigationBarBackButtonHidden(true)) {
                    Image(systemName: "play.circle")
                        .resizable()
                        .renderingMode(.original)
                        .foregroundColor(Color.white)
                        .frame(width: 82.0, height: 82.0)
                        .animation(.linear)
                }
                Divider()
                Spacer()
            }
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.06, green: 0.002, blue: 0.128)/*@END_MENU_TOKEN@*/)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        onBoardingVC()
    }
}
