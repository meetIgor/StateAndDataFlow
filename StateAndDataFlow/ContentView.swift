//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by igor s on 15.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.user.name)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            
            Spacer()
            
            ButtonView(title: timer.buttonTitle, color: .red) {
                timer.startTimer()
            }
            
            Spacer()
            
            ButtonView(title: "Log Out", color: .blue) {
                StorageManager.shared.clear(userManager: userManager)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}
