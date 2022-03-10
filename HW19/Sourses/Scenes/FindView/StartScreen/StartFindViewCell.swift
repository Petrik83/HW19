//
//  StandartFindViewCell.swift
//  HW16
//
//  Created by Александр Петрович on 02.02.2022.
//

import SwiftUI

struct StartFindViewCell: View {
    var cellData: FindViewItem
    
    var body: some View {
        GeometryReader { geometry in
            NavigationLink {
                CategoryView(title: cellData.title, categoryItem: cellData.categoryViewItem)
                    .navigationBarHidden(true)
            } label: {
                ZStack(alignment: .leading) {
                    Image(cellData.image)
                        .resizable()
                        .cornerRadius(StartFindViewCellMetric.cornerRadius)
                        .padding(.horizontal,StartFindViewCellMetric.imagePadding)
                    
                    VStack {
                        Spacer()
                        Text(cellData.title)
                            .foregroundColor(.white)
                            .font(Font.body.bold())
                            .multilineTextAlignment(.leading)
                            .padding([.bottom, .leading], StartFindViewCellMetric.textPadding)
                    }
                }
            }
        }
    }
}

enum StartFindViewCellMetric {
    static let cornerRadius = 10.0
    static let imagePadding = 3.0
    static let textPadding = 10.0
}

struct StartFindViewCell_Previews: PreviewProvider {
    static var previews: some View {
        StartFindViewCell(cellData: FindViewItem.findViewItem[0])
            .frame(width: 300, height: 150)
    }
}


