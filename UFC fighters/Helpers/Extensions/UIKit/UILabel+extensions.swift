//
//  UILabel+extensions.swift
//  UFC fighters
//
//  Created by Aibek on 31.05.2022.
//

import UIKit

extension UILabel {
    func setupLabel(attributes: [(String, CGFloat)], textAlignment: NSTextAlignment, color: UIColor) {
        
        let attributedText = NSMutableAttributedString()
        attributes.forEach { (text, size) in
            attributedText.append(NSAttributedString(string: text,
                                                     attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: size)]))
        }
        self.attributedText = attributedText
        self.textAlignment = textAlignment
        self.backgroundColor = color
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupLabel(title: String, textSize: CGFloat, textAlignment: NSTextAlignment, backgroundColor: UIColor, textColor: UIColor) {
        self.text = title
        self.font.withSize(textSize)
        self.textAlignment = textAlignment
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
