//
//  StandartFindMoreInfo.swift
//  HW16
//
//  Created by Александр Петрович on 03.02.2022.
//

import SwiftUI

struct CategoryView: View {
    var title = String()
    var categoryItem: CategoryViewItem
    
    var body: some View {
        VStack(alignment: .leading) {            
            ScrollView(.vertical, showsIndicators: false) {
                FirstSectionScrollView(item: categoryItem.firstSectionItem)
                Divider()
                SectionDivider(title: "Плейлисты")
                
                SecondSectionScrollView(item: categoryItem.secondSectionItem)
                Divider()
                SectionDivider(title: "Горячие треки")
                
                ThirdSectionScrollView(item: categoryItem.therdSectionItem)
            }
        }
    }
}

struct NavBar: View {
    var title = String()
    @Environment(\.presentationMode) var presentation

    var body: some View {
        HStack {
            Button {
                self.presentation.wrappedValue.dismiss()
            } label: {
                Image(systemName: "chevron.backward")
                    .foregroundColor(.red)
                    .font(.title)
            }
            Spacer()
            Button {
                print("Нажата кнопка")
            } label: {
                Image(systemName: "ellipsis.circle.fill")
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(Color.red, Color(uiColor: .systemGray6))
                    .font(.title)
            }
        }
        .padding(.horizontal, CategoryViewMetric.buttonsPadding)
        
        Text(title)
            .font(.title.bold())
            .padding(.bottom, CategoryViewMetric.titleTextPaddingBottom)
            .padding(.leading, CategoryViewMetric.titleTextPaddingLeading)
        
        Divider()
        
    }
}

struct FirstSectionScrollView: View {
    var item: [FirstSectionItem]
    let rows = [GridItem(.flexible())]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(0..<item.count, id:\.self) {index in
                    MainHorizontalCell(mainHorizontalCellItem: item[index])
                        .frame(width: UIScreen.main.bounds.width * CategoryViewMetric.firstLazyHGridScale, height: UIScreen.main.bounds.width * CategoryViewMetric.firstLazyHGridScale)
                }
            }
        }
    }
}

struct SectionDivider: View {
    var title = String()
    var body: some View {
        HStack {
            Text(title)
                .font(.title.bold())
            Spacer()
            Button {
                print("See all buttton pressed")
            } label: {
                Text("См. все")
                    .foregroundColor(.red)
            }
        }
        .padding(.horizontal)
    }
}

struct SecondSectionScrollView: View {
    var item: [SectionItem]
    let secondRows = [GridItem(.fixed(UIScreen.main.bounds.width * CategoryViewMetric.secondRowsScale)),
                      GridItem(.fixed(UIScreen.main.bounds.width * CategoryViewMetric.secondRowsScale))]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: secondRows, spacing: 0) {
                ForEach(0..<item.count, id:\.self) {index in
                    SecondaryHorizontalCell(secondaryHorizontalCellItem: item[index])
                        .frame(width: UIScreen.main.bounds.width * CategoryViewMetric.secondLazyHGridScale)
                }
            }
        }
    }
}

struct ThirdSectionScrollView: View {
    var item: [SectionItem]
    let thirdRows: [GridItem] = Array(repeating: .init(.fixed(CategoryViewMetric.thirdRowsHeight)), count: CategoryViewMetric.thirdRowsCount)

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: thirdRows, spacing: CategoryViewMetric.thirdLazyHGridSpacing) {
                ForEach(0..<item.count, id:\.self) { index in
                    ThirdHorizontalCell(thirdHorizontalCellItem: item[index])
                        .frame(width: UIScreen.main.bounds.width * CategoryViewMetric.thirdLazyHGridScale)
                }
            }
        }
        .padding(.bottom, CategoryViewMetric.thirdLazyHGridPadding)
    }
}

enum CategoryViewMetric {
    static let secondRowsScale = 0.53
    
    static let thirdRowsHeight = 60.0
    static let thirdRowsCount = 4
    
    static let buttonsPadding = 5.0
    
    static let titleTextPaddingBottom = -5.0
    static let titleTextPaddingLeading = 20.0
    
    static let firstLazyHGridScale = 0.9
    static let secondLazyHGridScale = 0.47
    static let thirdLazyHGridSpacing = 1.0
    static let thirdLazyHGridScale = 0.93
    static let thirdLazyHGridPadding = 80.0
}

struct StandartFindMoreInfo_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(categoryItem: FindViewItem.findViewItem[0].categoryViewItem)
    }
}
