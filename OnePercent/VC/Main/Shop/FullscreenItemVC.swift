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
    let itemTitle = UILabel()
    let priceLabel = UILabel()
    let itemDescription = UILabel()
    let ATCButton = OPButton(Text: "Add To Cart")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light 

        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        configureItemView()
        configureItemTitle()
        configurePriceLabel()
        configureItemDescription()
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
    
    private func configureItemTitle(){
        
        view.addSubview(itemTitle)
        
        itemTitle.text = "Classic Black"
        
        itemTitle.font = UIFont(name: "AvenirNext-Bold", size: 25)
        
        itemTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            itemTitle.topAnchor.constraint(equalTo: itemView.bottomAnchor, constant: 20),
            itemTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
        ])
        
    }
    
    private func configurePriceLabel(){
        
        view.addSubview(priceLabel)
        
        priceLabel.text = "$35.00"
        
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            priceLabel.topAnchor.constraint(equalTo: itemTitle.bottomAnchor, constant: 5),
            priceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            priceLabel.heightAnchor.constraint(equalToConstant: 20)
            
        ])
        
        
    }
    
    private func configureItemDescription(){
        
        view.addSubview(itemDescription)
        
        itemDescription.text =
        "The Classic Black 1% Tee.\n\nMade in USA.\n\n100% Cotton."
        
        itemDescription.textAlignment = .center
        
        itemDescription.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        itemDescription.numberOfLines = 5
        
        itemDescription.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            itemDescription.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 25),
            itemDescription.leadingAnchor.constraint(equalTo: itemView.leadingAnchor),
            itemDescription.trailingAnchor.constraint(equalTo: itemView.trailingAnchor),
            itemDescription.heightAnchor.constraint(equalToConstant: 120)
            
        ])

        
        
        
    }
    
    private func configureQuantityPicker(){
        
        
        
    }
    
    private func configureSizePicker(){
        
        
        
        
    }
    
    private func configureATCButton(){
        
        view.addSubview(ATCButton)
        
        ATCButton.addTarget(self, action: #selector(addToCart), for: .touchUpInside)
        
        ATCButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            ATCButton.heightAnchor.constraint(equalToConstant: 50),
            ATCButton.widthAnchor.constraint(equalToConstant: 230),
            ATCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ATCButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -65)
            
        ])
        
    }
    
    @objc func addToCart(){
        
        dismiss(animated: true) {
            
            print("Add to cart + Added to cart animation")
            
        }
        
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
