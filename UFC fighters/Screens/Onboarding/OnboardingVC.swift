//
//  OnboardingVC.swift
//  UFC fighters
//
//  Created by Aibek on 24.02.2022.
//

import UIKit

    
class OnboardingVC: UIViewController {

    private var onboardingView: OnboardingView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func loadView() {
        super.loadView()
        onboardingView = OnboardingView(frame: self.view.bounds)
        self.view = onboardingView
    }

}





