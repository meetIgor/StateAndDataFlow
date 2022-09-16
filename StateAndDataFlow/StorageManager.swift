//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by igor s on 16.09.2022.
//

import Foundation

class StorageManager: ObservableObject {
    static let shared = StorageManager()
    
    private let storage = UserDefaults.standard
    private let nameKey = "username"
    
    private init() {}
    
    func save(_ user: UserManager) {
        storage.set(user.name, forKey: nameKey)
    }
    
    func fetch() -> UserManager {
        let user = UserManager()
        if let username = storage.string(forKey: nameKey) {
            user.name = username
        }
        return user
    }
    
    func delete(_ user: UserManager) {
        user.name = ""
        storage.removeObject(forKey: nameKey)
    }
}
