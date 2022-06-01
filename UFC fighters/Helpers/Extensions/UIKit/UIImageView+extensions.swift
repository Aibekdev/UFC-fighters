//
//  UIImageView+extensions.swift
//  UFC fighters
//
//  Created by Aibek on 06.05.2022.
//

import UIKit

extension UIImageView {
    func setupImageView(image: UIImage) {
        self.contentMode = .scaleAspectFit
        self.translatesAutoresizingMaskIntoConstraints = false
        self.image = image
    }
}
