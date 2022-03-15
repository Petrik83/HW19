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
    func makeCoordinator() -> Coordinator {
        return FindViewControllerSUI.Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
        
        let controller = UINavigationController(rootViewController: FindViewController())
        let searchController = UISearchController()
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
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            parent.showPlayer = false
            print(searchText)
        }
        
        func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            parent.showPlayer = true
        }
    }
}
