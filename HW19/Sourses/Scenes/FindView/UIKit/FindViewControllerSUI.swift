//
//  FindViewControllerSUI.swift
//  HW16
//
//  Created by Александр Петрович on 06.03.2022.
//

import SwiftUI
import UIKit

struct FindViewControllerSUI: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIViewController {
        
        let controller = UINavigationController(rootViewController: FindViewController())
        let searchController = UISearchController()
        controller.navigationBar.topItem?.hidesSearchBarWhenScrolling = false
        controller.navigationBar.topItem?.searchController = searchController
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    
    
}
