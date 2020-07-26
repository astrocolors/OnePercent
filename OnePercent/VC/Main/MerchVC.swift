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
        
        let customizeView = UIBarButtonItem(image: UIImage(systemName: "slider.horizontal.3"), style: .plain, target: self, action: #selector(pushCustomViewVC))
        
        let searchView = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(pushSearchVC))

        let image: UIImage = UIImage(named: "One Percent (transparent)")!
        let logo = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        logo.contentMode = .scaleAspectFit
        logo.image = image

        navigationItem.titleView = logo
        navigationItem.setLeftBarButton(customizeView, animated: true)
        navigationItem.setRightBarButton(searchView, animated: true)
        
        navigationItem.leftBarButtonItem?.tintColor = #colorLiteral(red: 0.2156862745, green: 0.5058823529, blue: 0.168627451, alpha: 1)
        navigationItem.rightBarButtonItem?.tintColor = #colorLiteral(red: 0.2156862745, green: 0.5058823529, blue: 0.168627451, alpha: 1)
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
    
    @objc func pushCustomViewVC(){
        
        let customViewVC = CustomViewVC()
        
        customViewVC.modalPresentationStyle = .fullScreen
        
        present(customViewVC, animated: true)
        
    }
    
    @objc func pushSearchVC(){
        
        let searchVC = SearchVC()
        
        navigationController?.pushViewController(searchVC, animated: true)
        
    }
    
}
