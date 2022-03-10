//
//  HorizontalCell.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 28.01.22.
//

import SwiftUI

struct HorizontalCell: View {
    @State var cellData: RadioItem
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                Text("ИЗБРАННАЯ РАДИОСТАНЦИЯ")
                    .foregroundColor(.secondary)
                    .font(.caption)
                Text(cellData.title)
                    .font(.title)
                Text("Станция Apple Music")
                    .foregroundColor(.secondary)
                    .font(.title)
                Image(cellData.image)
                    .resizable()
                    .cornerRadius(HorizontalCellMetric.imageCornerRadius)
            }
            .frame(width: geometry.size.width, height: geometry.size.width)
            .padding(.leading, HorizontalCellMetric.padding)
        }
    }
}

struct HorizontalCell_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalCell(cellData: RadioItem(image: "Хиты", title: "Хиты"))
    }
}

enum HorizontalCellMetric {
    static let imageCornerRadius = 5.0
    static let padding = 20.0
}
