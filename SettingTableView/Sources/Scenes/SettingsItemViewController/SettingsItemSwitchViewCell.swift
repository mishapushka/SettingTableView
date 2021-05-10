//
//  SettingsItemSwitchViewCell.swift
//  SettingTableView
//
//  Created by mac on 08.05.2021.
//

import UIKit

final class SettingsSwitchCell: SettingsCellTableView {

    private lazy var switchView = UISwitch()

    override func setupHierarchy() {
        super.setupHierarchy()
        addSubview(switchView)
    }

    override func setupLayout() {
        super.setupLayout()
        switchView.addConstraints(centerY: centerYAnchor,
                                  trailing: trailingAnchor, paddingTrailing: Metric.trailingAnchorSwitch)
    }
}
