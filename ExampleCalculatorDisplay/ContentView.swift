//
//  ContentView.swift
//  ExampleCalculatorDisplay
//
//  Created by David on 11/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Imagine a Calculator Display")
            Text("It is right (trailing) aligned.")
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            DisplayView()
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environmentObject( EnvironmentGlobal(line1: "line 1",
                              line2: "line 2",
                              line3: "line 3",
                              line4: "line 4")
                            )
}
