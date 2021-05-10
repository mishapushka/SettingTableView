//
//  SettingItemArrowWithTitle.swift
//  SettingTableView
//
//  Created by mac on 08.05.2021.
//

import UIKit

class SettingslArowWithTitle: SettingsArrowCell {

    let detailLabel: UILabel = {
        let detailLabel = UILabel()
        detailLabel.textColor = .lightGray

        return detailLabel
    }()

    override func setupHierarchy() {
        super.setupHierarchy()
        addSubview(detailLabel)
    }

    override func setupLayout() {
        super.setupLayout()
        detailLabel.addConstraints(centerY: centerYAnchor,
                                   trailing: iconImageView.leadingAnchor,
                                   paddingTrailing: Metric.trailingAnchorArrowTitle)
    }
}
