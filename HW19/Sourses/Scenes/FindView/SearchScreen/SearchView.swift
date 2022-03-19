//
//  SearchFindView.swift
//  HW16
//
//  Created by Александр Петрович on 02.02.2022.
//

import SwiftUI

struct SearchView: View {
    
    var columns = [GridItem(.flexible())]
    @EnvironmentObject var picker: PickerChoise
    @EnvironmentObject var searchText: SearchText
    @EnvironmentObject var playerPresenter: PlayerPresenter
    
    var body: some View {
        VStack {
            if searchText.searchText == "" {
                if !searchText.lastSearch.isEmpty {
                    LastSearchBar()
                }
                LastSearchList()
            } else {
                List {
                    ForEach(searchHints(incomingData: FindViewItem.findViewItem, text: searchText.searchText), id:\.self) { index in
                        SearchHintsButton(item: index)
                    }
                    
                    ForEach (searchFilter(incomingData: FindViewItem.findViewItem, text: searchText.searchText), id:\.self) { index in
                        SearchFilterButton(item: index)
                    }
                }
                .listStyle(.plain)
                .gesture(DragGesture().onChanged{_ in UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)})
            }
        }
    }
    
    func searchFilter(incomingData: [FindViewItem], text: String) -> [SectionItem] {
        var array = [SectionItem]()
        incomingData.forEach { item in
            for i in 0..<item.categoryViewItem.therdSectionItem.count {
                if text != "" {
                    if (item.categoryViewItem.therdSectionItem[i].title.hasPrefix(text) || item.categoryViewItem.therdSectionItem[i].subTitle.hasPrefix(text)) {
                        array.append(item.categoryViewItem.therdSectionItem[i])
                    }
                }
            }
        }
        return Array(Set(array))
    }
    
    func searchHints(incomingData: [FindViewItem], text: String) -> [String] {
        var array = [String]()
        incomingData.forEach { item in
            for item in item.categoryViewItem.therdSectionItem {
                if text != "" {
                    if item.title.hasPrefix(text) {
                        array.append(item.title)
                    }
                    if item.subTitle.hasPrefix(text) {
                        array.append(item.subTitle)
                    }
                }
            }
        }
        return Array(Set(array))
    }
}

struct LastSearchBar: View {
    @EnvironmentObject var searchText: SearchText
    
    var body: some View {
        HStack{
            Text("Недавние поиски")
                .font(Font.body.bold())
            Spacer()
            Button {
                searchText.lastSearch.removeAll()
            } label: {
                Text("Очистить")
                    .foregroundColor(.red)
                    .font(Font.body.bold())
            }
        }
        .padding(.horizontal, SearchViewMetric.horizontalPadding)
    }
}

struct LastSearchList: View {
    @EnvironmentObject var searchText: SearchText
    @EnvironmentObject var playerPresenter: PlayerPresenter
    
    var body: some View {
        List{
            ForEach (Array(Set(searchText.lastSearch)), id:\.self) { index in
                Button {
                    searchText.searchResult = index
                    playerPresenter.timerSlider = 0
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                } label: {
                    SearchResultCell(SearchResultCellItem: index)
                }
            }
        }
        .listStyle(.plain)
        .gesture(DragGesture().onChanged{_ in UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)})
    }
}

struct SearchHintsButton: View {
    @EnvironmentObject var searchText: SearchText
    var item = String()
    
    var body: some View {
        Button {
            searchText.searchText = item
            searchText.hintButtonDidPressed = true
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        } label: {
            HStack(spacing: SearchViewMetric.spacing) {
                Image(systemName: "magnifyingglass")
                    .padding(.trailing, SearchViewMetric.trailingPadding)
                Text(searchText.searchText)
                Text(item.dropFirst(searchText.searchText.count))
                    .foregroundColor(.secondary)
                Spacer()
            }
        }
    }
}

struct SearchFilterButton: View {
    @EnvironmentObject var searchText: SearchText
    @EnvironmentObject var playerPresenter: PlayerPresenter
    var item: SectionItem
    
    var body: some View {
        Button {
            searchText.searchResult = item
            playerPresenter.timerSlider = 0
            searchText.lastSearch.append(item)
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        } label: {
            SearchResultCell(SearchResultCellItem: item)
        }
    }
}

enum SearchViewMetric {
    static let horizontalPadding = 20.0
    static let trailingPadding = 10.0
    static let spacing = 0.0
}
