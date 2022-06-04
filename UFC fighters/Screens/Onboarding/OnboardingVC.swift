//
//  OnboardingVC.swift
//  UFC fighters
//
//  Created by Aibek on 24.02.2022.
//

import UIKit
    
class OnboardingVC: UIViewController {
    private var onboardingView: OnboardingView?
    private let router: OnboardingRouterProtocol = BaseRouting()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        onboardingView = OnboardingView(frame: self.view.bounds)
        self.view = onboardingView
        onboardingView?.outputAction = self
    }
}

//MARK: - Actions
extension OnboardingVC: OnboardingOutputAction {
    func nextDidPress() {
        self.router.routeToFightersList()
    }
}
