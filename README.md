# ExampleCalculatorDisplay
Example to show ScrollView with Horizontal Alignment is very much impossible.

I've made this example to ship off to Apple in a Feedback request.  It shows the trouble I'm having getting
a typical calculator multi line display (which are right aligned).  I want the individual lines to be in a
horizontal ScrollView() so that the iPhone user may touch and drag to see the full equation.

The general display is made of 4 lines inside a VStack() e.g.:

                 // DisplayLine1 - horiz doesn't work
                ScrollView(.horizontal) {
                    HStack(alignment: .firstTextBaseline, spacing: textSpace) {
                        Spacer()
                        Text(env.calculatorLine1)
                    }
                    .foregroundColor(.pink)
                }   // scrollView
                .scrollIndicators(.automatic, axes: [.horizontal])


For details about Alignment Guides in SwiftUI see:
https://swiftui-lab.com/alignment-guides/

ScreenShot of Xcode with App running in canvas.  Calculator display with right adjusted text in VERTICAL ScrollView (not the desired state) and left adjusted text in Horizontal ScrollView (well not desired either).  Desired state is all RIGHT Aligned & all Horizontal ScrollView.
<img width="1022" alt="Screenshot 2023-11-17 at 7 18 48 PM" src="https://github.com/davidakoontz/ExampleCalculatorDisplay/assets/3614419/0dea8a0c-546b-429b-a5e4-761f0e02937d">
