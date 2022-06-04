//
//  NavigationView.swift
//  UFC fighters
//
//  Created by Aibek on 01.06.2022.
//

import UIKit

enum NavigationViewType {
    case fightersList, fighterDetail
    
    var data: (title: String, leftButtonTitle: String?) {
        switch self {
        case .fightersList:
            return (title: "My Favourite Fighters",
                    leftButtonTitle: nil)
        case .fighterDetail:
            return (title: "Info",
                    leftButtonTitle: "🔙")
        }
    }
}

protocol NavigationOutputAction: class {
    func leftButtonDidPress()
}

class NavigationView: UIView {
    private let titleLabel = UILabel()
    private let leftButton = UIButton()
    
    weak var outputAction: NavigationOutputAction?
    
    init(frame: CGRect, type: NavigationViewType) {
        super.init(frame: frame)
        configureViews()
        configureLabels(type)
        configureButtons(type)
        setupTargets()
        addSubviews()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureViews() {
        self.backgroundColor = .systemGray4
    }
    
    private func configureLabels(_ type: NavigationViewType) {
        titleLabel.setupLabel(title: type.data.title,
                              textSize: 24.0,
                              textAlignment: .center,
                              backgroundColor: .clear,
                              textColor: .black)
    }
    
    private func configureButtons(_ type: NavigationViewType) {
        if let title = type.data.leftButtonTitle {
            leftButton.setupButton(title: title,
                                   titleSize: 18.0,
                                   titleColor: .white,
                                   backgroundColor: .clear,
                                   cornerRadius: 0.0)
        } else {
            return leftButton.isHidden = true
        }
    }
    
    private func setupTargets() {
        leftButton.addTarget(self,
                             action: #selector(leftButtonDidPress),
                             for: .touchDown)
    }
    
    private func addSubviews() {
        [leftButton, titleLabel].forEach { self.addSubview($0) }
    }
    
    private func setupLayout() {
        leftButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20.0).isActive = true
        leftButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10.0).isActive = true
        leftButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        leftButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10.0).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        titleLabel.widthAnchor.constraint(equalToConstant: 240).isActive = true
    }
}

//MARK: - Actions
extension NavigationView {
    @objc func leftButtonDidPress() {
        outputAction?.leftButtonDidPress()
    }
}
