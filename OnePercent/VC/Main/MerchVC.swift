//
//  MerchVC.swift
//  OnePercent
//
//  Created by Astro on 7/25/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class MerchVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        configureNavBar()
    }
    
    private func configureNavBar(){
        
        let cartItem = UIBarButtonItem(image: UIImage(systemName: "square.grid.2x2"), style: .plain, target: self, action: #selector(pushCartVC))
        
        let sideMenuItem = UIBarButtonItem(image: UIImage(systemName: "line.horizontal.3"), style: .plain, target: self, action: #selector(pushSideMenuVC))
        
        let image: UIImage = UIImage(named: "One Percent (transparent)")!
        let logo = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        logo.contentMode = .scaleAspectFit
        logo.image = image

        navigationItem.titleView = logo
        navigationItem.setLeftBarButton(sideMenuItem, animated: true)
        navigationItem.setRightBarButton(cartItem, animated: true)
        navigationItem.leftBarButtonItem?.tintColor = #colorLiteral(red: 0.2170326445, green: 0.505137953, blue: 0.1686274558, alpha: 1)
        navigationItem.rightBarButtonItem?.tintColor = #colorLiteral(red: 0.2170326445, green: 0.505137953, blue: 0.1686274558, alpha: 1)
        
        
    }
    
    @objc func pushCartVC(){
        
        let cartVC = CartVC()
        
        navigationController?.pushViewController(cartVC, animated: true)
        
    }
    
    @objc func pushSideMenuVC(){
        
        let sideMenuVC = SideMenuVC()
        
        //navigationController?.pushViewController(sideMenuVC, animated: true)
        
    }

}
