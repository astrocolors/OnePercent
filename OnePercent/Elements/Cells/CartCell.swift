//
//  CartCell.swift
//  OnePercent
//
//  Created by Astro on 7/26/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class CartCell: UITableViewCell {
    
    static let reuseID = "CartCell"
    
    let itemImage = UIImageView()
    let itemLabel = UILabel()
    let itemPrice = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureItemImage()
        configureItemLabel()
        configureItemPrice()
        configureQuantityPicker()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
        
    }
    
    private func configureItemImage(){
        
        addSubview(itemImage)
        
        itemImage.layer.cornerRadius = 5
        itemImage.clipsToBounds = true
        itemImage.image = UIImage(named: "3")
        
        itemImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            itemImage.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            itemImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            itemImage.widthAnchor.constraint(equalToConstant: 65),
            itemImage.heightAnchor.constraint(equalToConstant: 65)
            
        ])
        
        
    }
    
    private func configureItemLabel(){
        
        addSubview(itemLabel)
        
        itemLabel.text = "One Percent 100% Cotton Black Tee"
        
        itemLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            itemLabel.topAnchor.constraint(equalTo: itemImage.topAnchor, constant: 10),
            itemLabel.leadingAnchor.constraint(equalTo: itemImage.trailingAnchor, constant: 10),
            itemLabel.trailingAnchor.constraint(equalTo: centerXAnchor)
            
        ])
   
    
    }
    
    private func configureItemPrice(){
        
        addSubview(itemPrice)
        
        itemPrice.text = "$60.00"
        
        itemPrice.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            itemPrice.topAnchor.constraint(equalTo: itemLabel.bottomAnchor, constant: 5),
            itemPrice.leadingAnchor.constraint(equalTo: itemImage.trailingAnchor, constant: 10),
            
        ])
        
    }
    
    private func configureQuantityPicker(){
        
        print("configure quantity picker")
        
    }
    
}
