//
//  CustomViewCell.swift
//  OnePercent
//
//  Created by Astronomical on 7/27/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class CustomViewCell: UITableViewCell {
    
    static let reuseID = "CustomViewCell"
    
    let choiceLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureChoiceLabel()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
        
    }
    
    func configureChoiceLabel(){
        
        addSubview(choiceLabel)
        
        choiceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            choiceLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            choiceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            choiceLabel.heightAnchor.constraint(equalToConstant: 50),
            choiceLabel.widthAnchor.constraint(equalToConstant: bounds.width)
            
        ])
        
        
    }
    
    func setup(label: String) {
        
        choiceLabel.text = label
        
    }
    
    
}
