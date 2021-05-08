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
        iconView.translatesAutoresizingMaskIntoConstraints = false
        iconView.topAnchor.constraint(equalTo: topAnchor, constant: Metric.topIcon).isActive = true
        iconView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Metric.leadingIcon).isActive = true
        iconView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: Metric.bottomIcon).isActive = true
        iconView.widthAnchor.constraint(equalTo: iconView.heightAnchor, multiplier: Metric.widthIcon).isActive = true

        titleView.translatesAutoresizingMaskIntoConstraints = false
        titleView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titleView.leadingAnchor.constraint(equalTo: iconView.trailingAnchor, constant: Metric.leadingTitle).isActive = true

        separatorView.translatesAutoresizingMaskIntoConstraints = false
        separatorView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        separatorView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Metric.leadingSeparator).isActive = true
        separatorView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        separatorView.heightAnchor.constraint(equalToConstant: Metric.heightSeparator).isActive = true
    }
}
