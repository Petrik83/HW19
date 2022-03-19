//
//  FindViewControllerSUI.swift
//  HW16
//
//  Created by Александр Петрович on 06.03.2022.
//

import SwiftUI
import UIKit

struct FindViewControllerSUI: UIViewControllerRepresentable {
    
    @Binding var showPlayer: Bool?
    @EnvironmentObject var searchText: SearchText
    let controller = UINavigationController(rootViewController: FindViewController())
    
    func makeUIViewController(context: Context) -> UIViewController {
        let searchView = UIHostingController(rootView: SearchView())
        let searchController = UISearchController(searchResultsController: searchView)
        controller.navigationBar.topItem?.hidesSearchBarWhenScrolling = false
        controller.navigationBar.topItem?.searchController = searchController
        searchController.searchBar.delegate = context.coordinator
        setupSearchController(searchController: searchController)
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    func makeCoordinator() -> Coordinator {
        return FindViewControllerSUI.Coordinator(parent: self)
    }
    
    private func setupSearchController(searchController: UISearchController) {
        searchController.showsSearchResultsController = true
        searchController.searchBar.scopeButtonTitles = ["Apple Music", "Ваша Медиатека"]
        searchController.searchBar.selectedScopeButtonIndex = 0
        searchController.searchBar.placeholder = searchController.searchBar.scopeButtonTitles?[searchController.searchBar.selectedScopeButtonIndex]
    }
}

extension FindViewControllerSUI {
    class Coordinator: NSObject, UISearchBarDelegate {
        var parent: FindViewControllerSUI
        
        init(parent: FindViewControllerSUI) {
            self.parent = parent
        }
        
        func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
            parent.showPlayer = false
        }
        
        func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
            parent.showPlayer = true
            if parent.searchText.hintButtonDidPressed {
                parent.controller.navigationBar.topItem?.searchController?.searchBar.text = parent.searchText.searchText
                parent.searchText.hintButtonDidPressed = false
            }
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            parent.showPlayer = false
            parent.searchText.searchText = searchText
            print(searchText)
        }
        
        func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            parent.showPlayer = true
            parent.controller.navigationBar.topItem?.searchController?.searchBar.text = ""
        }
        
        func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
            parent.controller.navigationBar.topItem?.searchController?.searchBar.placeholder = parent.controller.navigationBar.topItem?.searchController?.searchBar.scopeButtonTitles?[selectedScope]
        }
    }
}
