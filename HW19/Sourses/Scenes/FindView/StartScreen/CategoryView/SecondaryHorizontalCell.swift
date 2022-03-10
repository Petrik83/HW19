//
//  SecondaryHorizontalCell.swift
//  HW16
//
//  Created by Александр Петрович on 05.02.2022.
//

import SwiftUI

struct SecondaryHorizontalCell: View {
    
    var secondaryHorizontalCellItem: SectionItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(secondaryHorizontalCellItem.image)
                .resizable()
                .cornerRadius(SecondaryHorizontalCellMetric.cornerRadius)
            Text(secondaryHorizontalCellItem.title)
                .lineLimit(1)
            Text(secondaryHorizontalCellItem.subTitle)
                .lineLimit(1)
                .foregroundColor(.secondary)
        }
        .padding(.leading)
    }
}

enum SecondaryHorizontalCellMetric {
    static let cornerRadius = 10.0
}

struct SecondaryHorizontalCell_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryHorizontalCell(secondaryHorizontalCellItem: FindViewItem.findViewItem[0].categoryViewItem.secondSectionItem[1])
    }
}
