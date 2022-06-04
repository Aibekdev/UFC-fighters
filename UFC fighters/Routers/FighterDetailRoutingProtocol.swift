//
//  FighterDetailRoutingProtocol.swift
//  UFC fighters
//
//  Created by Aibek on 04.06.2022.
//

import UIKit

protocol FighterDetailRoutingProtocol {
    func dismissToHome(_ vc: UIViewController)
}

extension BaseRouting: FighterDetailRoutingProtocol {
}

