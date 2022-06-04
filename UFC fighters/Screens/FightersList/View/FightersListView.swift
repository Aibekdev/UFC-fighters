//
//  FightersListView.swift
//  UFC fighters
//
//  Created by Aibek on 01.06.2022.
//

import UIKit

class FightersListView: UIView {
    private var navigationView: NavigationView!
    var fightersListTableView: FightersListTableView!
    
    static let screenHeight = UIScreen.main.bounds.height
    static let screenWidth = UIScreen.main.bounds.width
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureViews()
        addSubviews()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureViews() {
        self.backgroundColor = .systemGray4
        navigationView = NavigationView(frame: CGRect(x: 0,
                                                      y: 0,
                                                      width: FightersListView.screenWidth,
                                                      height: 88.0),
                                        type: .fightersList)
        fightersListTableView = FightersListTableView(frame: CGRect(x: 0,
                                                                    y: 0,
                                                                    width: FightersListView.screenWidth,
                                                                    height: FightersListView.screenHeight - 88))
    }
    
    private func addSubviews() {
        [navigationView, fightersListTableView].forEach { self.addSubview($0) }
    }
    
    private func setupLayout() {
        navigationView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        navigationView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        navigationView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        navigationView.heightAnchor.constraint(equalToConstant: 88.0).isActive = true
        
        fightersListTableView.translatesAutoresizingMaskIntoConstraints = false
        fightersListTableView.topAnchor.constraint(equalTo: navigationView.bottomAnchor).isActive = true
        fightersListTableView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        fightersListTableView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        fightersListTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}
