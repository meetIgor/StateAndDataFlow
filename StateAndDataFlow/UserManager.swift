//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by igor s on 15.09.2022.
//

import Foundation

class UserManager: ObservableObject {
    
    @Published var user = User()
    
    init() {}
    
    init(_ user: User) {
        self.user = user
    }
    
}

struct User: Codable {
    var name = ""
    var isRegister = false
}
