//
//  FullscreenItemVC.swift
//  OnePercent
//
//  Created by Astro on 7/26/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class FullscreenItemVC: UIViewController {
    
    let itemView = UIImageView()
    let priceLabel = UILabel()
    let itemDescription = UILabel()
    let ATCButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        configureItemView()
        configurePriceLabel()
        configureQuantityPicker()
        configureSizePicker()
        configureDescription()
        configureATCButton()
        
    }
    
    private func configureItemView(){
        
        view.addSubview(itemView)
        
        itemView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            itemView.topAnchor.constraint(equalTo: view.topAnchor),
            itemView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            itemView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            itemView.heightAnchor.constraint(equalTo: view.heightAnchor)
            
        ])
        
        
    }
    
    private func configurePriceLabel(){
        
        view.addSubview(priceLabel)
        
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            priceLabel.topAnchor.constraint(equalTo: view.topAnchor),
            priceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            priceLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            priceLabel.heightAnchor.constraint(equalTo: view.heightAnchor)
            
        ])
        
        
    }
    
    private func configureQuantityPicker(){
        
        
        
    }
    
    private func configureSizePicker(){
        
        
        
        
    }
    
    private func configureDescription(){
        
        view.addSubview(itemDescription)
        
        itemDescription.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            itemDescription.topAnchor.constraint(equalTo: view.topAnchor),
            itemDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            itemDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            itemDescription.heightAnchor.constraint(equalTo: view.heightAnchor)
            
        ])
        
        
    }
    
    private func configureATCButton(){
        
        view.addSubview(ATCButton)
        
        ATCButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            ATCButton.topAnchor.constraint(equalTo: view.topAnchor),
            ATCButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ATCButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ATCButton.heightAnchor.constraint(equalTo: view.heightAnchor)
            
        ])
        
    }

}
