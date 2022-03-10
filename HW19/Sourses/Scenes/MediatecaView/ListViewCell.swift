//
//  ListViewCell.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 26.01.22.
//

import SwiftUI

struct ListViewCell: View {
    
    @State var cellDAta: Item
    
    var body: some View {
        HStack {
            Image(systemName: cellDAta.icon)
                .foregroundColor(.red)
                .frame(width: ListViewCellMetric.imageWidth, height: ListViewCellMetric.imageHeight)
            Text(cellDAta.title)
        }
        .listRowBackground(Color.clear)
    }
}

struct ListViewCell_Previews: PreviewProvider {
    static var previews: some View {
        ListViewCell(cellDAta: Item(icon: "tv", title: "Телешоу и фильмы"))
    }
}

enum ListViewCellMetric {
    static let imageWidth = 25.0
    static let imageHeight = 18.7
}
