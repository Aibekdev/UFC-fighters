//
//  UIBotton+extensions.swift
//  UFC fighters
//
//  Created by Aibek on 01.05.2022.
//

import UIKit

extension UIButton {
    func setupButton(title: String, titleSize: CGFloat, titleColor: UIColor) {
        self.setTitle(title, for: .normal)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: titleSize )
        self.setTitleColor(titleColor, for: .normal)
    }
}

