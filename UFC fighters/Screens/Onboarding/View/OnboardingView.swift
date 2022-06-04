//
//  OnboardingView.swift
//  UFC fighters
//
//  Created by Aibek on 27.05.2022.
//

import UIKit

protocol OnboardingOutputAction: class {
    func nextDidPress()
}

class OnboardingView: UIView {
    private let onboardingImageView = UIImageView()
    private let descriptionLabel = UILabel()
    private let nextButton = UIButton(type: .system)
    private let attributesForLabel = [(Localizations.OnboardingVC.LabelAttributes.firstText,
                                       Constants.OnboardingVC.LabelAttributes.firstTextSize)]
    
    weak var outputAction: OnboardingOutputAction?
                                      
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureViews()
        configureImageViews()
        configureLabels()
        configureButtons()
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
    
    private func configureImageViews() {
        guard let image = UIImage.init(named: "ufc_logo") else { return }
        onboardingImageView.setupImageView(image: image)
    }
    
    private func configureLabels() {
        descriptionLabel.setupLabel(attributes: attributesForLabel,
                                    textAlignment: .center,
                                    color: .clear)
    }
    
    private func configureButtons() {
        nextButton.setupButton(title: Localizations.OnboardingVC.nextButtonTitle,
                               titleSize: 14.0,
                               titleColor: .white,
                               backgroundColor: .red,
                               cornerRadius: 20.0)
    }
    
    private func setupTargets() {
        nextButton.addTarget(self, action: #selector(nextDidPress), for: .touchDown)
    }
    
    private func addSubviews() {
        [onboardingImageView, descriptionLabel, nextButton].forEach { self.addSubview($0) }
    }
    
    private func setupLayout() {
        onboardingImageView.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        onboardingImageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5).isActive = true
        onboardingImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        onboardingImageView.topAnchor.constraint(equalTo: self.topAnchor,constant: 50).isActive = true
        onboardingImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionLabel.topAnchor.constraint(equalTo: onboardingImageView.bottomAnchor, constant: 10).isActive = true
        descriptionLabel.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 10).isActive = true
        descriptionLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        descriptionLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        nextButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50).isActive = true
        nextButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        nextButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
    }
}

//MARK: - Actions
extension OnboardingView {
    @objc func nextDidPress() {
        outputAction?.nextDidPress()
    }
}
