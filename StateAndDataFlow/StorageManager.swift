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
    private let key = "user"
    
    private init() {}
    
    func save(_ user: UserManager) {
        guard let data = try? JSONEncoder().encode(user.user) else { return }
        storage.set(data, forKey: key)
    }
    
    func get() -> UserManager {
        guard let data = storage.data(forKey: key) else { return UserManager() }
        guard let user = try? JSONDecoder().decode(User.self, from: data) else { return UserManager() }
        return UserManager(user)
    }
    
    func delete(_ user: UserManager) {
        user.user.isRegister = false
        user.user.name = ""
        storage.removeObject(forKey: key)
    }

}
