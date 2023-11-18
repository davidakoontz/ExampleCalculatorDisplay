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
