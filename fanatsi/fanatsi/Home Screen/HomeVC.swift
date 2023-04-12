//
//  HomeVC.swift
//  fanatsi
//
//  Created by ShreeThaanu on 05/04/23.
//

import SwiftUI

struct HomeVC: View {
    @State var users: [User] = [
        User(id: 0, firstName: "WonderPooh", lastName: "cudieeee", age: 23, mutualFriends: 4, imageName: "person_1", occupation: "Looking for a gaming partner"),
        User(id: 1, firstName: "Ik'ots", lastName: "", age: 27, mutualFriends: 0, imageName: "person_2", occupation: "Looking for some traveller"),
        User(id: 2, firstName: "Cax'oil", lastName: "Delaney", age: 20, mutualFriends: 1, imageName: "person_3", occupation: "Something casual"),
        User(id: 3, firstName: "Ukved", lastName: "Watson", age: 19, mutualFriends: 4, imageName: "person_4", occupation: "Dont know yet"),
        User(id: 4, firstName: "Rampheal", lastName: "Prater", age: 22, mutualFriends:18, imageName: "person_5", occupation: "looking for a partner"),
        User(id: 5, firstName: "Bhurnaens", lastName: "Braun", age: 24, mutualFriends: 3, imageName: "person_6", occupation: "Finding peace")
    ]
    
    private func getCardWidth(_ geometry: GeometryProxy, id: Int) -> CGFloat {
        let offset: CGFloat = CGFloat(users.count - 1 - id) * 10
        return geometry.size.width - offset
    }
    
    private func getCardOffset(_ geometry: GeometryProxy, id: Int) -> CGFloat {
        return  CGFloat(users.count - 1 - id) * 10
    }
    
    private var maxID: Int {
        return self.users.map { $0.id }.max() ?? 0
    }
    
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: "circle.fill")
                    .foregroundColor(Color.green)
            }
            .padding(.trailing, 155.0)
            .padding(.top, 25.0)
            Spacer(minLength: 50)
            HStack{
                homeHeaderView()
                    .foregroundColor(Color.white)
                Spacer()
            }
            VStack {
                GeometryReader { geometry in
                    VStack(spacing: 24) {
                        ZStack {
                            ForEach(self.users, id: \.self) { user in
                                Group {
                                    if (self.maxID - 3)...self.maxID ~= user.id {
                                        CardView(user: user, onRemove: { removedUser in
                                            self.users.removeAll { $0.id == removedUser.id }
                                        })
                                        .animation(.spring())
                                        .frame(width: self.getCardWidth(geometry, id: user.id), height: 400)
                                        .offset(x: 0, y: self.getCardOffset(geometry, id: user.id))
                                    }
                                }
                            }
                        }
                        Spacer()
                    }
                }
            }.padding()
            HStack{
                TabBarView()
                    .padding(.bottom, 40.0)
                    .padding(.leading, 20.0)
            }
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .background(LinearGradient(gradient: Gradient(colors: [Color.init(#colorLiteral(red: 0.05965987593, green: 0.001901586424, blue: 0.128074944, alpha: 1)), Color.init(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))]), startPoint: .bottom, endPoint: .top))
    }
}

struct DateView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Friday, 10th January")
                        .font(.title)
                        .bold()
                    Text("Today")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
            }.padding()
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct HomeVC_Previews: PreviewProvider {
    static var previews: some View {
        HomeVC()
    }
}

extension Animation {
    func reverse(on: Binding<Bool>, delay: Double) -> Self {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            on.wrappedValue = false /// Switch off after `delay` time
        }
        return self
    }
}
