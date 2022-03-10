//
//  StartFindView.swift
//  HW16
//
//  Created by Александр Петрович on 02.02.2022.
//

import SwiftUI

struct StartFindView: View {
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: columns) {
                    Section(header: HStack {
                        Text("Поиск по категориям")
                            .bold()
                        Spacer()
                    }) {
                        ForEach(0..<FindViewItem.findViewItem.count) { index in
                            StartFindViewCell(cellData: FindViewItem.findViewItem[index])
                                .frame(width: geometry.size.width / 2, height: geometry.size.width / 3)
                        }
                    }
                }
            }
        }
    }
}

struct StandartFindView_Previews: PreviewProvider {
    static var previews: some View {
        StartFindView()
    }
}
