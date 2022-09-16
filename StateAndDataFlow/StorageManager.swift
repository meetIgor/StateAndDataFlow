//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by igor s on 16.09.2022.
//

import Foundation
import Combine

class StorageManager: ObservableObject {
    static let shared = StorageManager()
    
    //let objectWillChange = PassthroughSubject<UserManager, Never>()
    
    private let storage = UserDefaults.standard
    private let nameKey = "username"
    
    private init() {}
    
//    func save(username: String) {
//        storage.set(username, forKey: nameKey)
//    }
    
//    func fetch() -> String {
//        if let user = storage.string(forKey: nameKey) {
//            return user
//        }
//        return ""
//    }
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
        //let user = fetch()
        user.name = ""
        storage.removeObject(forKey: nameKey)
    }
}
