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
    let itemSize = UILabel()
    let itemCount = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureItemImage()
        configureItemLabel()
        configureItemPrice()
        configureItemSize()
        configureItemCount()
        configureQuantityPicker()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
        
    }
    
    private func configureItemImage(){
        
        addSubview(itemImage)
        
        itemImage.layer.cornerRadius = 5
        itemImage.clipsToBounds = true
        
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
        
        itemLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            itemLabel.topAnchor.constraint(equalTo: itemImage.topAnchor, constant: 10),
            itemLabel.leadingAnchor.constraint(equalTo: itemImage.trailingAnchor, constant: 10),
            itemLabel.trailingAnchor.constraint(equalTo: centerXAnchor, constant: 60)
            
        ])
   
    
    }
    
    private func configureItemPrice(){
        
        addSubview(itemPrice)
        
        itemPrice.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            itemPrice.topAnchor.constraint(equalTo: itemLabel.bottomAnchor, constant: 5),
            itemPrice.leadingAnchor.constraint(equalTo: itemImage.trailingAnchor, constant: 10),
            
        ])
        
    }
    
    private func configureItemSize(){
        
        addSubview(itemSize)
        
        itemSize.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            itemSize.topAnchor.constraint(equalTo: itemLabel.topAnchor),
            itemSize.leadingAnchor.constraint(equalTo: trailingAnchor, constant: -90),
            
        ])
        
    }
    
    private func configureItemCount(){
        
        addSubview(itemCount)
        
        itemCount.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            
            itemCount.topAnchor.constraint(equalTo: itemPrice.topAnchor),
            itemCount.leadingAnchor.constraint(equalTo: trailingAnchor, constant: -92),
            
        ])

    }
    
    func setup(Image: UIImage, ItemName: String, Price: String, Size: String, Quantity: String){
        
        self.itemImage.image = Image
        self.itemLabel.text = ItemName
        self.itemPrice.text = Price
        self.itemSize.text = Size
        self.itemCount.text = Quantity
        
    }
    
    private func configureQuantityPicker(){
        
        print("configure quantity picker")
        
    }
    
}
