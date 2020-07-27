//
//  FullscreenItemVC.swift
//  OnePercent
//
//  Created by Astro on 7/26/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class FullscreenItemVC: UIViewController {
    
    let itemView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    var itemImage = UIImage()
    let priceLabel = UILabel()
    let itemDescription = UILabel()
    let ATCButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light 

        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        configureItemView()
        configureDescription()
        configurePriceLabel()
        configureQuantityPicker()
        configureSizePicker()
        configureATCButton()
        
    }
    
    private func configureItemView(){
        
        view.addSubview(itemView)
        
        itemView.backgroundColor = .white
        itemView.delegate = self
        itemView.dataSource = self
        itemView.layer.cornerRadius = 8
        itemView.register(FullScreenItemCell.self, forCellWithReuseIdentifier: FullScreenItemCell.reuseID)
    
        itemView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            itemView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            itemView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            itemView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            itemView.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: 40)
        ])
        
    }
    
    func setItemImage(image: UIImage){
        
        
        
        
    }
    
    private func configurePriceLabel(){
        
        view.addSubview(priceLabel)
        
        priceLabel.text = "$60.00"
        
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            priceLabel.topAnchor.constraint(equalTo: itemDescription.bottomAnchor, constant: 10),
            priceLabel.leadingAnchor.constraint(equalTo: itemView.leadingAnchor),
            priceLabel.trailingAnchor.constraint(equalTo: itemView.trailingAnchor),
            
        ])
        
        
    }
    
    private func configureQuantityPicker(){
        
        
        
    }
    
    private func configureSizePicker(){
        
        
        
        
    }
    
    private func configureDescription(){
        
        view.addSubview(itemDescription)
        
        itemDescription.text = "100% Cotton Black One Percent T-Shirt"
        
        itemDescription.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            itemDescription.topAnchor.constraint(equalTo: itemView.bottomAnchor, constant: 10),
            itemDescription.leadingAnchor.constraint(equalTo: itemView.leadingAnchor),
            itemDescription.trailingAnchor.constraint(equalTo: itemView.trailingAnchor),
            
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

extension FullscreenItemVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FullScreenItemCell.reuseID, for: indexPath) as! FullScreenItemCell
        
        cell.setImage(image: itemImage)
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        
    }
    
}
