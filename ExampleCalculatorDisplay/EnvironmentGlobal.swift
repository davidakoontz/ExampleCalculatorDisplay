//
//  EnvironmentGlobal.swift
//  ExampleCalculatorDisplay
//
//  Created by David on 11/16/23.
//

import Foundation

class EnvironmentGlobal: ObservableObject {
    
    @Published var calculatorLine4 = ""
    @Published var calculatorLine3 = ""
    @Published var calculatorLine2 = ""
    @Published var calculatorLine1 = ""
    
    init(line1: String, line2: String, line3: String, line4: String) {
        // RESET the Calculator memories
        // clear all displays and reset flags
        
        calculatorLine4 = line4
        calculatorLine3 = line3
        calculatorLine2 = line2
        calculatorLine1 = line1
    }
}
