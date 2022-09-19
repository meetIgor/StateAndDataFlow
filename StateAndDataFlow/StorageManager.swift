//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by igor s on 19.09.2022.
//

import SwiftUI

class StorageManager {
    static let shared = StorageManager()
    
    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func save(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func fetchUser() -> User {
        guard
            let user = try? JSONDecoder().decode(User.self, from: userData ?? Data() )
        else {
            return User()
            
        }
        return user
    }
    
    func clear(userManager: UserManager) {
        userManager.user.name = ""
        userManager.user.isRegistered = false
        userData = nil
    }
}
