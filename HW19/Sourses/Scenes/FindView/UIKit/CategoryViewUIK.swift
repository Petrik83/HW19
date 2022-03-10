//
//  CategoryViewUIK.swift
//  HW16
//
//  Created by Александр Петрович on 08.03.2022.
//

import SwiftUI

final class CategoryViewUIK: UIHostingController<CategoryView> {
    let item: CategoryViewItem
    
    init(item: CategoryViewItem) {
        self.item = item
        super.init(rootView: CategoryView(categoryItem: item))
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
}
