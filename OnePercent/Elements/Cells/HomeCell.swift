//
//  HomeCell.swift
//  OnePercent
//
//  Created by Astro on 7/26/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {

    static let reuseID = "HomeCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureTemp()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    func configureTemp(){
        
        let iv = UIImageView(image: UIImage(named: "One Percent"))
        
        addSubview(iv)
        
        iv.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([

            iv.centerXAnchor.constraint(equalTo: centerXAnchor),
            iv.centerYAnchor.constraint(equalTo: centerYAnchor)
            
        ])

        
    }
    
}
