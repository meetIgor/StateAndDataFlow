//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by igor s on 15.09.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}

