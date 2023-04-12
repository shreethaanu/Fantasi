//
//  UserModel.swift
//  fanatsi
//
//  Created by ShreeThaanu on 05/04/23.
//

import Foundation
struct User: Hashable, CustomStringConvertible {
    var id: Int
    
    let firstName: String
    let lastName: String
    let age: Int
    let mutualFriends: Int
    let imageName: String
    let occupation: String
    
    var description: String {
        return "\(firstName), id: \(id)"
    }
}
