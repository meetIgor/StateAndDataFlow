//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by igor s on 17.09.2022.
//

import Foundation
import SwiftUI

class StorageManager {
    static let shared = StorageManager()
    
    @AppStorage("username") var name = ""
    
    private init() {}
    
    func save(_ user: UserManager) {
        name = user.name
    }
    
    func get() -> UserManager {
        let user = UserManager()
        user.name = name
        return user
    }
    
    func delete(_ user: UserManager) {
        user.name = ""
        name = ""
    }
}
