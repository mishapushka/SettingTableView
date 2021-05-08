//
//  Extension.swift
//  SettingTableView
//
//  Created by mac on 08.05.2021.
//

import UIKit

extension SettingsCellTableView {
    func addSubviews(_ subviews: UIView...) {
            subviews.forEach { addSubview($0) }
        }
}
