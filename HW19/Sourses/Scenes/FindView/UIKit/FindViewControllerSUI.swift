//
//  FindViewControllerSUI.swift
//  HW16
//
//  Created by Александр Петрович on 06.03.2022.
//

import SwiftUI
import UIKit

struct FindViewControllerSUI: UIViewControllerRepresentable {
    
//    @EnvironmentObject var playerPresenter: PlayerPresenter
    @Binding var showPlayer: Bool?
    @EnvironmentObject var searchText: SearchText
    let controller = UINavigationController(rootViewController: FindViewController())

    func makeCoordinator() -> Coordinator {
        return FindViewControllerSUI.Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
        let searchView = UIHostingController(rootView: SearchView())
        
        let searchController = UISearchController(searchResultsController: searchView)
//        searchController.searchBar.text = "hkjhj"
        searchController.showsSearchResultsController = true
        searchController.searchBar.scopeButtonTitles = ["Apple Music", "Ваша Медиатека"]
        searchController.searchBar.delegate = context.coordinator
        
        controller.navigationBar.topItem?.hidesSearchBarWhenScrolling = false
        controller.navigationBar.topItem?.searchController = searchController
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
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
    }
}
