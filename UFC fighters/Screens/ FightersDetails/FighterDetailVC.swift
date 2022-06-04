//
//  FighterDetailVC.swift
//  UFC fighters
//
//  Created by Aibek on 04.06.2022.
//

import UIKit
import youtube_ios_player_helper

class FighterDetailVC: UIViewController, YTPlayerViewDelegate {
    private var fighterDetailView: FighterDetailView?
    private let router: FighterDetailRoutingProtocol = BaseRouting()
    
    var model: FighterModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        guard let model = model else { return }
        fighterDetailView = FighterDetailView(frame: self.view.bounds, model: model)
        self.view = fighterDetailView
        fighterDetailView?.youTubePlayerView.delegate = self
        fighterDetailView?.navigationView.outputAction = self
    }
}

//MARK: - Actions
extension FighterDetailVC: NavigationOutputAction {
    func leftButtonDidPress() {
        router.dismissToHome(self)
    }
}

