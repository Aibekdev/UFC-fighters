//
//  OnboardingRouterProtocol.swift
//  UFC fighters
//
//  Created by Aibek on 01.06.2022.
//

import UIKit

protocol OnboardingRouterProtocol {
    func routeToFightersList()
}

extension BaseRouting: OnboardingRouterProtocol {
    func routeToFightersList() {
        let viewController = FightersListVC()
        let navigationController = UINavigationController(rootViewController: viewController)
        UIApplication.shared.windows.first?.rootViewController = navigationController
    }
}
