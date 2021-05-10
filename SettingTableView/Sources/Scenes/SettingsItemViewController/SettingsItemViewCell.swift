//
//  SettingsItemViewCell.swift
//  SettingTableView
//
//  Created by mac on 08.05.2021.
//

import UIKit

class SettingsCellTableView: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    lazy var iconView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .center
        image.tintColor = .white
        image.layer.masksToBounds = true
        image.layer.cornerRadius = Metric.layerCornerRadius
        return image
    }()

    lazy var titleView = UILabel()
    lazy var separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()

    func setupHierarchy() {
        addSubview(iconView)
        addSubview(titleView)
        addSubview(separatorView)
    }

    func setupLayout() {
        iconView.addConstraints(top: topAnchor, paddingTop: Metric.topIcon,
                                bottom: bottomAnchor, paddingBottom: Metric.bottomIcon,
                                leading: leadingAnchor, paddingLeading: Metric.leadingIcon,
                                width: iconView.heightAnchor, paddingWidth: Metric.widthIcon,
                                height: iconView.heightAnchor, paddingHeight: Metric.heightIcon)

        titleView.addConstraints(centerY: centerYAnchor,
                                 leading: iconView.trailingAnchor, paddingLeading: Metric.leadingTitle)

        separatorView.addConstraints(bottom: bottomAnchor,
                                     trailing: trailingAnchor,
                                     leading: leadingAnchor,
                                     heightToConstant: Metric.heightSeparator)
    }
}

extension SettingsCellTableView {

    enum Metric {
        static let layerCornerRadius: CGFloat = 8
        static let trailingAnchorSwitch: CGFloat = -16
        static let trailingAnchorArrow: CGFloat = -16
        static let trailingAnchorArrowTitle: CGFloat = -16

        static let topIcon: CGFloat = 8
        static let bottomIcon: CGFloat = -8
        static let widthIcon: CGFloat = 3
        static let heightIcon: CGFloat = 3
        static let leadingIcon: CGFloat = 16

        static let leadingTitle: CGFloat = 16
        static let leadingSeparator: CGFloat = 50
        static let heightSeparator: CGFloat = 0.5
    }
}
