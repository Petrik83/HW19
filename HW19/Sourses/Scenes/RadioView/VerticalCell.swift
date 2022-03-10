//
//  VerticalCell.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 28.01.22.
//

import SwiftUI

struct VerticalCell: View {
    @State var cellData: RadioItem
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Image(cellData.image)
                    .resizable()
                    .cornerRadius(VerticalCellMetric.imageCornerRadius)
                    .frame(width: (geometry.size.width / VerticalCellMetric.imageFrameDivider), height: (geometry.size.width / VerticalCellMetric.imageFrameDivider))
                    .padding(.leading,VerticalCellMetric.imagePadding)
                VStack(alignment: .leading) {
                    Spacer()
                    Text(cellData.title)
                    Text("Станция Apple Music")
                    Spacer()
                }
                Spacer()
            }
            .frame(width: geometry.size.width, height: geometry.size.width / VerticalCellMetric.imageFrameDivider)
        }
    }
}

struct VerticalCell_Previews: PreviewProvider {
    static var previews: some View {
        VerticalCell(cellData: RadioItem(image: "Хиты", title: "Хиты"))
    }
}

enum VerticalCellMetric {
    static let imageCornerRadius = 5.0
    static let imagePadding = 20.0
    static let imageFrameDivider = 3.0
}
