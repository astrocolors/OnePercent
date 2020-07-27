//
//  FullScreenItemCell.swift
//  OnePercent
//
//  Created by Astro on 7/26/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class FullScreenItemCell: UICollectionViewCell {
    
    static let reuseID = "FullScreenItemCell"
    
    let iv = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        configureIV()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
        
    }
    
    private func configureIV(){
        
        addSubview(iv)
        
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        
        iv.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            iv.topAnchor.constraint(equalTo: topAnchor),
            iv.leadingAnchor.constraint(equalTo: leadingAnchor),
            iv.trailingAnchor.constraint(equalTo: trailingAnchor),
            iv.heightAnchor.constraint(equalTo: heightAnchor)
            
        ])
        
    }
    
    func setImage(image: UIImage){
        
        iv.image = image
        
    }
    
}
