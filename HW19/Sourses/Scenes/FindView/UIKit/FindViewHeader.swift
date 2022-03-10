//
//  FindViewHeader.swift
//  HW16
//
//  Created by Александр Петрович on 08.03.2022.
//

import UIKit

class FindViewHeader: UICollectionReusableView {
    
    static let reuseId = "FindViewHeader"
    
    let title = UILabel()
    let line = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewHierarchy()
        setupLayout()
        setupElements()
    }
    
    private func viewHierarchy() {
        addSubview(line)
        addSubview(title)
    }
    
    private func setupLayout() {
        line.translatesAutoresizingMaskIntoConstraints = false
        line.leadingAnchor.constraint(equalTo: leadingAnchor, constant: SectionHeaderMetric.lineLeadingArchorConstant).isActive = true
        line.trailingAnchor.constraint(equalTo: trailingAnchor, constant: SectionHeaderMetric.lineTrailingArchorConstant).isActive = true
        line.topAnchor.constraint(equalTo: topAnchor).isActive = true
        line.heightAnchor.constraint(equalToConstant: SectionHeaderMetric.lineHeightAnchorConstant).isActive = true
        
        title.translatesAutoresizingMaskIntoConstraints = false
        title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: SectionHeaderMetric.titleLeadingArchorConstant).isActive = true
        title.centerYAnchor.constraint(equalTo: centerYAnchor, constant: SectionHeaderMetric.titleCenterYAnchorConstant).isActive = true
        title.heightAnchor.constraint(equalToConstant: SectionHeaderMetric.titleHeightAnchorConstant).isActive = true
    }
    
    private func setupElements() {
        title.textColor = .black
        title.font = UIFont.boldSystemFont(ofSize: SectionHeaderMetric.titleFontSize)
        line.backgroundColor = UIColor.systemGray3
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Constants
enum SectionHeaderMetric {
    static let lineLeadingArchorConstant = 10.0
    static let lineTrailingArchorConstant = -10.0
    static let lineHeightAnchorConstant = 1.0
    
    static let titleLeadingArchorConstant = 10.0
    static let titleCenterYAnchorConstant = 5.0
    static let titleHeightAnchorConstant = 20.0
    static let titleFontSize = 25.0
}
