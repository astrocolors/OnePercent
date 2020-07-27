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
    
    let iv = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureTemp()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    func configureTemp(){
        
        addSubview(iv)
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 10
        iv.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([

            iv.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            iv.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            iv.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iv.bottomAnchor.constraint(equalTo: centerYAnchor)
            
        ])
        
    }
    
}
