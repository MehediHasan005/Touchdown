//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Mehedi Hasan on 27/11/22.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
