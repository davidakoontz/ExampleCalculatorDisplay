//
//  DisplayView.swift
//  ExampleCalculatorDisplay
//
//  Created by David on 11/16/23.
//

import SwiftUI

struct DisplayView: View {
    @EnvironmentObject var env: EnvironmentGlobal
    
    var body: some View {
        let screenWidth             : CGFloat  = UIScreen.main.bounds.width
        let _                       : CGFloat  = UIScreen.main.bounds.height
        //  screenHeight
        
        let innerPadding            : CGFloat  = 20.0
        let outerPadding            : CGFloat  = 15.0
        let rowSpace                : CGFloat  = 0
        let textSpace               : CGFloat  = 0
        
        let displayWidth = screenWidth - (2*outerPadding)
        
        Spacer()
        Group {

            VStack(alignment: .trailing, spacing: rowSpace) {
                Spacer()    // allow top spacer - moving line1 to bottom
                
                // DisplayLine4 - right aligned while vertical scrolling
                ScrollView {
                    HStack(alignment: .firstTextBaseline, spacing: textSpace) {
                        Spacer()
                        Text(env.calculatorLine4)
                    }
                    .foregroundColor(.blue)
                }   // scrollView
                .scrollIndicators(.visible, axes: .horizontal)
                
                // DisplayLine3
                ScrollView() {
                    HStack(alignment: .firstTextBaseline, spacing: textSpace) {
                        Spacer()    // move text to right
                        Text(env.calculatorLine3)

                    }
                    .foregroundColor(.orange)
                }   // scrollView
                .scrollIndicators(.visible, axes: [.vertical, .horizontal])
                
                // DisplayLine2 - horiz doesn't work
                ScrollView(.horizontal) {
                    HStack(alignment: .firstTextBaseline, spacing: textSpace) {
                        Spacer()
                        Text(env.calculatorLine2)
                    }
                    .foregroundColor(.green)
                }   // scrollView
                .scrollIndicators(.visible, axes: .horizontal)
                
                // DisplayLine1 - horiz doesn't work
                ScrollView(.horizontal) {
                    HStack(alignment: .firstTextBaseline, spacing: textSpace) {
                        Spacer()
                        Text(env.calculatorLine1)
                    }
                    .foregroundColor(.pink)
                }   // scrollView
                .scrollIndicators(.automatic, axes: [.horizontal])
                
            } // vStack
            .lineLimit(1)
           
            

            
        } // group - the display frame
        .padding(.horizontal, innerPadding)     // before frame
        .padding(.vertical, innerPadding)       // inside frame
        .frame(width: displayWidth, height: 200)
        .background(Color.white)
        .border(Color.blue)
        
    }
    

}


struct DisplayView_Previews: PreviewProvider {

    static var env = EnvironmentGlobal(line1: "line 1",
                                       line2: "line 2 = 5",
                                       line3: "line 3 = 10;",
                                       line4: "line 4 = 20")
    
    static var previews: some View {
        
        @State var navPath = NavigationPath()
        
        NavigationStack(path: $navPath ) {
            ZStack(alignment: .top) {
                VStack() {
                    // Equation Display
                    DisplayView()
                        .environmentObject( env )
                    Spacer()
                }
            }
        }
    }
}

