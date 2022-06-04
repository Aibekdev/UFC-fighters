//
//  FightersListVC.swift
//  UFC fighters
//
//  Created by Aibek on 31.05.2022.
//

import UIKit

class FightersListVC: UIViewController {
    private var fightersListView: FightersListView?
    private let router: FightersListRoutingProtocol = BaseRouting()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        fightersListView = FightersListView(frame: self.view.bounds)
        self.view = fightersListView
        fightersListView?.fightersListTableView.outputAction = self
    }
}

//MARK: - Actions
extension FightersListVC: FightersListOutputAction {
    func selectDidPress(_ model: FighterModel) {
        router.routeToFighterDetail(vc: self, model: model)
    }
}

