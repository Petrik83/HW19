//
//  ThirdHorizontalCell.swift
//  HW16
//
//  Created by Александр Петрович on 05.02.2022.
//

import SwiftUI

struct ThirdHorizontalCell: View {
    
    var thirdHorizontalCellItem: SectionItem
    @EnvironmentObject var searchText: SearchText
    @EnvironmentObject var playerPresenter: PlayerPresenter
    
    var body: some View {
        ZStack {
            HStack {
                Image(thirdHorizontalCellItem.image)
                    .resizable()
                    .cornerRadius(ThirdHorizontalCellMetric.cornerRadius)
                    .frame(width: ThirdHorizontalCellMetric.frameSize,
                           height: ThirdHorizontalCellMetric.frameSize)
                
                VStack(alignment: .leading){
                    Text(thirdHorizontalCellItem.title)
                    Text(thirdHorizontalCellItem.subTitle)
                        .foregroundColor(.secondary)
                    Divider()
                }
            }
            .padding(.leading)
            
            HStack {
                Button {
                    searchText.searchResult = thirdHorizontalCellItem
                    playerPresenter.timerSlider = 0
                } label: {
                    Rectangle()
                        .foregroundColor(Color(UIColor.clear))
                        .frame(height: ThirdHorizontalCellMetric.frameSize)
                }
                Spacer()
                Button {
                    print("Hello!")
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.primary)
                }
                .padding(.trailing)
            }
        }
    }
}

enum ThirdHorizontalCellMetric {
    static let cornerRadius = 5.0
    static let frameSize = 60.0
}

struct ThirdHorizontalCell_Previews: PreviewProvider {
    static var previews: some View {
        ThirdHorizontalCell(thirdHorizontalCellItem: FindViewItem.findViewItem[0].categoryViewItem.therdSectionItem[0])
    }
}
