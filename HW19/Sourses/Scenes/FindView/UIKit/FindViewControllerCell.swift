//
//  FindViewControllerCell.swift
//  HW16
//
//  Created by Александр Петрович on 06.03.2022.
//

import UIKit

class FindViewControllerCell: UICollectionViewCell {
    static var reuseId = "SearchViewControllerCell"
    
    let icon = UIImageView()
    let title = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewHierarchy()
        setupLayout()
        
        icon.contentMode = .scaleToFill
        icon.clipsToBounds = true
        icon.layer.cornerRadius = 10
        
        title.textColor = UIColor.white
        title.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        title.lineBreakMode = .byWordWrapping
        title.numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func viewHierarchy() {
        addSubview(icon)
        addSubview(title)
    }
    
    private func setupLayout() {
        
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        icon.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        icon.topAnchor.constraint(equalTo: topAnchor).isActive = true
        icon.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        title.translatesAutoresizingMaskIntoConstraints = false
        title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        title.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        title.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
    }
}

