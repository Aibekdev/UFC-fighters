//
//  PageCell.swift
//  UFC fighters
//
//  Created by Aibek on 16.03.2022.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    var page: Page? {
        didSet {

            guard let unwrappedPage = page else {return}
            
            ufcImageView.image = UIImage(named:  unwrappedPage.imageName)
            
            let attributedText = NSMutableAttributedString(string: unwrappedPage.headerText, attributes: [NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 18)])
            
            attributedText.append(NSAttributedString(string: "\n\n (unwrappedPage.bodyText)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize:14)]))
            
            
            descriptionTextView.attributedText = attributedText
            descriptionTextView.textAlignment = .center
        }
    }
    
    private let ufcImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "ufc_logo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout(){
        

    let imageView = UIImageView(image: UIImage(named: "ufc_logo"))
       addSubview(imageView)
        
        
    imageView.frame = CGRect(x:0, y:0, width:80, height:80)
        
    imageView.heightAnchor.constraint(equalTo:heightAnchor, multiplier: 0.5).isActive = true
    imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    imageView.topAnchor.constraint(equalTo: topAnchor,constant: 50).isActive = true
    imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
    imageView.contentMode = .scaleAspectFit
    imageView.translatesAutoresizingMaskIntoConstraints = false

    
}
        let descriptionTextView: UITextView = {
         let textView = UITextView()
         
         let attributedText = NSMutableAttributedString(string: "Application about my favourite UFC fighters", attributes: [NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 18)])
         
         attributedText.append(NSAttributedString(string: "\n\n Islam Makhachev is the future UFC champion.", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize:14)]))
         
         textView.attributedText = attributedText
         textView.textAlignment = .center
         textView.translatesAutoresizingMaskIntoConstraints = false
         textView.backgroundColor = .systemGray4
         textView.isEditable = false
         textView.isScrollEnabled = false
         return textView


     }()

}






    
    
   

