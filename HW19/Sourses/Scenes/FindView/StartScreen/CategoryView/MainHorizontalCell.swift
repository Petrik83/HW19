//
//  MainHorizontalCell.swift
//  HW16
//
//  Created by Александр Петрович on 05.02.2022.
//

import SwiftUI

struct MainHorizontalCell: View {
    
    var mainHorizontalCellItem: FirstSectionItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(mainHorizontalCellItem.name)
                .font(.system(size: MainHorizontalCellMetric.nameFondSize, weight: .medium))
                .foregroundColor(.secondary)
            Text(mainHorizontalCellItem.title)
                .font(.system(size: MainHorizontalCellMetric.titleFondSize, weight: .medium))
                .lineLimit(1)
            Text(mainHorizontalCellItem.subTitle)
                .font(.system(size: MainHorizontalCellMetric.subTitleFondSize, weight: .medium))
                .foregroundColor(.secondary)
            Image(mainHorizontalCellItem.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(MainHorizontalCellMetric.imageCornerRadius)
        }
        .padding(.leading)
    }
}

enum MainHorizontalCellMetric {
    static let nameFondSize = 12.0
    static let titleFondSize = 20.0
    static let subTitleFondSize = 20.0
    static let imageCornerRadius = 20.0
}

struct MainHorizontalCell_Previews: PreviewProvider {
    static var previews: some View {
        MainHorizontalCell(mainHorizontalCellItem: FindViewItem.findViewItem[0].categoryViewItem.firstSectionItem[1])
    }
}
