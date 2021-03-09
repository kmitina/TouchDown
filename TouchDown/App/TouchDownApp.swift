//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by DVKSH on 4.03.21.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
