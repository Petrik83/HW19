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
        
        let searchViewController = FindViewController()
        let searchNavigationController = UINavigationController(rootViewController: searchViewController)
        return searchNavigationController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    
    
}
