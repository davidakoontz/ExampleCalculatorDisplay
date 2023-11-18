//
//  ExampleCalculatorDisplayApp.swift
//  ExampleCalculatorDisplay
//
//  Created by David on 11/16/23.
//

import SwiftUI

@main
struct ExampleCalculatorDisplayApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(EnvironmentGlobal(
                    line1: "line 1",
                    line2: "line 2",
                    line3: "line 3",
                    line4: "line 4"))
        }
    }
}
