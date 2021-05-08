//
//  SettingItemArrowViewCell.swift
//  SettingTableView
//
//  Created by mac on 08.05.2021.
//

import UIKit

class SettingsArrowCell: SettingsCellTableView {

    lazy var labelArrow: UILabel = {
        let labelArrow = UILabel()
        labelArrow.text = "＞"
        labelArrow.textColor = .lightGray

        return labelArrow
    }()

    override func setupHierarchy() {
        super.setupHierarchy()
        addSubview(labelArrow)
    }

    override func setupLayout() {
        super.setupLayout()
        labelArrow.translatesAutoresizingMaskIntoConstraints = false
        labelArrow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: Metric.trailingAnchorArrow).isActive = true
        labelArrow.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
