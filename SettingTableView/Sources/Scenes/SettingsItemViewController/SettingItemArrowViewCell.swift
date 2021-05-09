//
//  SettingItemArrowViewCell.swift
//  SettingTableView
//
//  Created by mac on 08.05.2021.
//

import UIKit

class SettingsArrowCell: SettingsCellTableView {

    lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "＞")
        imageView.tintColor = .black
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    override func setupHierarchy() {
        super.setupHierarchy()
        addSubview(iconImageView)
    }

    override func setupLayout() {
        super.setupLayout()
        iconImageView.addConstraints(centerY: centerYAnchor,
                                  trailing: trailingAnchor, paddingTrailing: Metric.trailingAnchorArrow)
    }
}
