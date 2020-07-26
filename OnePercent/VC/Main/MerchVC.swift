//
//  MerchVC.swift
//  OnePercent
//
//  Created by Astro on 7/25/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class MerchVC: UIViewController {
    
    let merchView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        configureNavBar()
        configureMerchView()
    }
    
    private func configureNavBar(){
        
        let image: UIImage = UIImage(named: "One Percent (transparent)")!
        let logo = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        logo.contentMode = .scaleAspectFit
        logo.image = image

        navigationItem.titleView = logo
        
    }
    
    private func configureMerchView(){
        
        view.addSubview(merchView)
        
        merchView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            
            merchView.topAnchor.constraint(equalTo: view.topAnchor),
            merchView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            merchView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            merchView.heightAnchor.constraint(equalTo: view.heightAnchor)
            
        ])
        
    }
    
}
