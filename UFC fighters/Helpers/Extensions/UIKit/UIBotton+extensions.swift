//
//  UIBotton+extensions.swift
//  UFC fighters
//
//  Created by Aibek on 01.05.2022.
//

import UIKit

extension UIButton {
    func setupButton(title: String, titleSize: CGFloat, titleColor: UIColor, backgroundColor: UIColor, cornerRadius: CGFloat) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: titleSize )
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerRadius
    }
}

