//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by igor s on 15.09.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {

    private let user = StorageManager.shared.fetch()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(user)
        }
    }
}

