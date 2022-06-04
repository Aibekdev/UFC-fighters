//
//  FighterCell.swift
//  UFC fighters
//
//  Created by Aibek on 01.06.2022.
//

import UIKit

class FighterCell: UITableViewCell {
    private let photoImageView = UIImageView()
    private let nameLabel = UILabel()
    var cellModel: FighterModel?
    
    override func awakeFromNib() { // Prochitati pro awakeFromNib
        super.awakeFromNib()
    }
    
    func fill(with model: FighterModel) {
        self.backgroundColor = .systemGray5
        self.cellModel = model
        configureImageViews(model)
        configureLabels(model)
        addSubviews()
        setupLayout()
    }
    
    private func configureImageViews(_ model: FighterModel) {
        guard let image = UIImage.init(named: model.photo) else { return }
        photoImageView.setupImageView(image: image)
    }
    
    private func configureLabels(_ model: FighterModel) {
        nameLabel.setupLabel(title: model.name,
                             textSize: 24.0,
                             textAlignment: .left,
                             backgroundColor: .clear,
                             textColor: .black)
    }
    
    private func addSubviews() {
        [photoImageView, nameLabel].forEach { self.addSubview($0) }
    }
    
    private func setupLayout() {
        photoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        photoImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20.0).isActive = true
        photoImageView.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        photoImageView.widthAnchor.constraint(equalToConstant: 50.0).isActive = true
        
        nameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: photoImageView.rightAnchor, constant: 10.0).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        nameLabel.widthAnchor.constraint(equalToConstant: 250.0).isActive = true
    }
}
