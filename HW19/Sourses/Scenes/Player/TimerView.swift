//
//  TimerView.swift
//  HW16
//
//  Created by Александр Петрович on 16.02.2022.
//

import SwiftUI

struct TimerView: View {
    @State var timeRemaining = 10
        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

        var body: some View {
            Text("\(timeRemaining)")
                .onReceive(timer) { _ in
                    if timeRemaining > 0 {
                        timeRemaining -= 1
                    }
                }
        }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
