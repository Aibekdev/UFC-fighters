//
//  FightersListRoutingProtocol.swift
//  UFC fighters
//
//  Created by Aibek on 04.06.2022.
//

import UIKit

protocol FightersListRoutingProtocol {
    func routeToFighterDetail(vc: UIViewController, model: FighterModel)
}

extension BaseRouting: FightersListRoutingProtocol {
    func routeToFighterDetail(vc: UIViewController, model: FighterModel) {
        let viewController = FighterDetailVC()
        viewController.model = model
        vc.navigationController?.isNavigationBarHidden = true
        vc.navigationController?.pushViewController(viewController, animated: true)
    }
}
