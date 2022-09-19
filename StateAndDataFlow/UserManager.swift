//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by igor s on 15.09.2022.
//

import Combine

class UserManager: ObservableObject {
    
    @Published var user = User()
    
    var nameIsValid: Bool {
        user.name.count >= 3
    }
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}

struct User: Codable {
    var name = ""
    var isRegistered = false
}

