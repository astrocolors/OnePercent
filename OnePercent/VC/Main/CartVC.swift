//
//  CartVC.swift
//  OnePercent
//
//  Created by Shamik Patro on 7/26/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class CartVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        configureNavBar()
    }
    
    private func configureNavBar(){
        
        let sideMenuItem = UIBarButtonItem(image: UIImage(systemName: "line.horizontal.3"), style: .plain, target: self, action: #selector(pushSideMenuVC))
        
        let viewItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(changeView))
        
        let image: UIImage = UIImage(named: "One Percent (transparent)")!
        let logo = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        logo.contentMode = .scaleAspectFit
        logo.image = image
        
        navigationItem.setLeftBarButton(sideMenuItem, animated: true)
        navigationItem.setRightBarButton(viewItem, animated: true)
        navigationItem.leftBarButtonItem?.tintColor = #colorLiteral(red: 0.2156862745, green: 0.5058823529, blue: 0.168627451, alpha: 1)
        navigationItem.rightBarButtonItem?.tintColor = #colorLiteral(red: 0.2170326445, green: 0.505137953, blue: 0.1686274558, alpha: 1)
            
        navigationItem.titleView = logo
        
    }
    
    @objc func pushSideMenuVC(){
        
        
        
        
    }
    
    @objc func changeView(){
        
        
        
        
    }
}
