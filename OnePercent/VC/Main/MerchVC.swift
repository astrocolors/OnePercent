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
    
    var imageArr = [
        
        UIImage(named: "2"),
        UIImage(named: "11"),
        UIImage(named: "5"),
        UIImage(named: "9"),
        UIImage(named: "11"),
        UIImage(named: "6"),
        UIImage(named: "9"),
        UIImage(named: "5"),
        UIImage(named: "2"),
        UIImage(named: "11")
    
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light 
        
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
        
        merchView.backgroundColor = .white
        merchView.delegate = self
        merchView.dataSource = self
        merchView.showsVerticalScrollIndicator = false
        merchView.translatesAutoresizingMaskIntoConstraints = false
        merchView.register(MerchCell.self, forCellWithReuseIdentifier: MerchCell.reuseID)
        
        NSLayoutConstraint.activate([
            
            merchView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            merchView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            merchView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            merchView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10)
            
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

extension MerchVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
        
    }
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return imageArr.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let image = imageArr[indexPath.row]!
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MerchCell.reuseID, for: indexPath) as! MerchCell
        
        cell.setImage(image: image)
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width / 2.08, height: collectionView.frame.width / 1.5)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let image = imageArr[indexPath.row]
        
        let fullScreenItemVC = FullscreenItemVC()
        
        fullScreenItemVC.itemImage = image!
        
        present(fullScreenItemVC, animated: true)
        
    }
    
}
