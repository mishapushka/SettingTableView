//
//  UIView+Ext.swift
//  Calculator
//
//  Created by Nikita Kazakov on 23.04.2021.
//

import UIKit

extension UIView {

    /// Добавление вьюх как сабвью
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }

    /// Добавление констрейнтов
    func addConstraints(
        centerY: NSLayoutYAxisAnchor? = nil, centerYPadding: CGFloat = 0,
        top: NSLayoutYAxisAnchor? = nil, paddingTop: CGFloat = 0,
        bottom: NSLayoutYAxisAnchor? = nil, paddingBottom: CGFloat = 0,
//        trailing: NSLayoutYAxisAnchor? = nil, paddingTrailing: CGFloat = 0,
//        leading: NSLayoutYAxisAnchor? = nil, paddingLeading: CGFloat = 0,
        width: CGFloat = 0,
        height: CGFloat = 0
    ) {
        translatesAutoresizingMaskIntoConstraints = false

        if let centerY = centerY {
            centerYAnchor.constraint(equalTo: centerY, constant: centerYPadding).isActive = true
        }

        // Use the top parameter to set the top constarint
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }

        // Use the bottom parameter to set the bottom constarint
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }

//        if let trailing = trailing {
//            trailingAnchor.constraint(equalTo: trailing, constant: paddingTrailing).isActive = true
//        }
//
//        if let leading = leading {
//            leadingAnchor.constraint(equalTo: leading, constant: paddingLeading).isActive = true
//        }
        
        // Use the width parameter to set the top constarint
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }

        // Use the height parameter to set the top constarint
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}
