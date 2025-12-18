//
//  apple_tutorialApp.swift
//  apple-tutorial
//
//  Created by RAC IT on 16/12/25.
//

import SwiftUI

@main
struct apple_tutorialApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(ModelData())
        }
    }
}
