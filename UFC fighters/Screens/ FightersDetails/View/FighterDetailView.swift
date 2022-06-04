//
//  FighterDetailView.swift
//  UFC fighters
//
//  Created by Aibek on 04.06.2022.
//

import UIKit
import youtube_ios_player_helper

class FighterDetailView: UIView {
    var navigationView: NavigationView!
    private let photoImageView = UIImageView()
    private let winsTitleLabel = UILabel()
    private let defeatsTitleLabel = UILabel()
    private let drawsTitleLabel = UILabel()
    private let winsLabel = UILabel()
    private let defeatsLabel = UILabel()
    private let drawsLabel = UILabel()

    let youTubePlayerView = YTPlayerView()
    
    static let screenHeight = UIScreen.main.bounds.height
    static let screenWidth = UIScreen.main.bounds.width
    private let model: FighterModel!
    
    init(frame: CGRect, model: FighterModel) {
        self.model = model
        super.init(frame: frame)
        configureViews(model)
        configureImageViews(model)
        configureLabels(model)
        addSubviews()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureViews(_  model: FighterModel) {
        self.backgroundColor = .white
        navigationView = NavigationView(frame: CGRect(x: 0,
                                                      y: 0,
                                                      width: FightersListView.screenWidth,
                                                      height: 88.0),
                                        type: .fighterDetail)
        
        youTubePlayerView.load(withVideoId: model.videoId,
                               playerVars: ["playsinline": 1])
    }
    
    private func configureImageViews(_ model: FighterModel) {
        guard let photo = UIImage.init(named: model.photo) else { return }
        photoImageView.setupImageView(image: photo)
    }
    
    private func configureLabels(_ model: FighterModel) {
        winsTitleLabel.setupLabel(title: "Wins: ",
                                       textSize: 18.0,
                                       textAlignment: .left,
                                       backgroundColor: .clear,
                                       textColor: .black)
        
        defeatsTitleLabel.setupLabel(title: "Defeats: ",
                                     textSize: 18.0,
                                     textAlignment: .left,
                                     backgroundColor: .clear,
                                     textColor: .black)
        
        drawsTitleLabel.setupLabel(title: "Draws: ",
                                   textSize: 18.0,
                                   textAlignment: .left,
                                   backgroundColor: .clear,
                                   textColor: .black)
        
        winsLabel.setupLabel(title: "\(model.wins)",
                                  textSize: 14.0,
                                  textAlignment: .right,
                                  backgroundColor: .clear,
                                  textColor: .black)
        
        defeatsLabel.setupLabel(title: "\(model.defeats)",
                                textSize: 14.0,
                                textAlignment: .right,
                                backgroundColor: .clear,
                                textColor: .black)
        
        drawsLabel.setupLabel(title: "\(model.draws)",
                              textSize: 14.0,
                              textAlignment: .right,
                              backgroundColor: .clear,
                              textColor: .black)
    }
    
    private func addSubviews() {
        [navigationView, photoImageView, winsTitleLabel, defeatsTitleLabel, drawsTitleLabel, winsLabel, defeatsLabel, drawsLabel, youTubePlayerView].forEach { self.addSubview($0) }
    }
    
    private func setupLayout() {
        navigationView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        navigationView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        navigationView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        navigationView.heightAnchor.constraint(equalToConstant: 88.0).isActive = true
        
        photoImageView.topAnchor.constraint(equalTo: navigationView.bottomAnchor, constant: 20.0).isActive = true
        photoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        photoImageView.heightAnchor.constraint(equalToConstant: 200.0).isActive = true
        photoImageView.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        
        winsTitleLabel.topAnchor.constraint(equalTo: photoImageView.bottomAnchor, constant: 10.0).isActive = true
        winsTitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 40.0).isActive = true
        winsTitleLabel.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        winsTitleLabel.widthAnchor.constraint(equalToConstant: 120.0).isActive = true
        
        defeatsTitleLabel.topAnchor.constraint(equalTo: winsTitleLabel.bottomAnchor, constant: 10.0).isActive = true
        defeatsTitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 40.0).isActive = true
        defeatsTitleLabel.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        defeatsTitleLabel.widthAnchor.constraint(equalToConstant: 120.0).isActive = true
        
        drawsTitleLabel.topAnchor.constraint(equalTo: defeatsTitleLabel.bottomAnchor, constant: 10.0).isActive = true
        drawsTitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 40.0).isActive = true
        drawsTitleLabel.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        drawsTitleLabel.widthAnchor.constraint(equalToConstant: 120.0).isActive = true
        
        winsLabel.topAnchor.constraint(equalTo: photoImageView.bottomAnchor, constant: 10.0).isActive = true
        winsLabel.leftAnchor.constraint(equalTo: winsTitleLabel.rightAnchor, constant: 10.0).isActive = true
        winsLabel.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        winsLabel.widthAnchor.constraint(equalToConstant: 60.0).isActive = true
        
        defeatsLabel.topAnchor.constraint(equalTo: winsLabel.bottomAnchor, constant: 10.0).isActive = true
        defeatsLabel.leftAnchor.constraint(equalTo: defeatsTitleLabel.rightAnchor, constant: 10.0).isActive = true
        defeatsLabel.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        defeatsLabel.widthAnchor.constraint(equalToConstant: 60.0).isActive = true
        
        drawsLabel.topAnchor.constraint(equalTo: defeatsLabel.bottomAnchor, constant: 10.0).isActive = true
        drawsLabel.leftAnchor.constraint(equalTo: drawsTitleLabel.rightAnchor, constant: 10.0).isActive = true
        drawsLabel.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        drawsLabel.widthAnchor.constraint(equalToConstant: 60.0).isActive = true
        
        youTubePlayerView.translatesAutoresizingMaskIntoConstraints = false
        youTubePlayerView.topAnchor.constraint(equalTo: drawsTitleLabel.bottomAnchor, constant: 10.0).isActive = true
        youTubePlayerView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10.0).isActive = true
        youTubePlayerView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10.0).isActive = true
        youTubePlayerView.heightAnchor.constraint(equalToConstant: 300.0).isActive = true
    }
}
