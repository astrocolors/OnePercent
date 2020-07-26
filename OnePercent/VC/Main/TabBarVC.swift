//
//  TabBarVC.swift
//  OnePercent
//
//  Created by Astro on 7/25/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        configure()
        
    }
    
    private func createHomeVC() -> UINavigationController {
        
        let homeVC = HomeVC()
        
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        homeVC.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        return UINavigationController(rootViewController: homeVC)
        
    }
    
    private func createMerchVC() -> UINavigationController {
        
        let merchVC = MerchVC()
        
        merchVC.tabBarItem.image = UIImage(systemName: "bag")
        merchVC.tabBarItem.selectedImage = UIImage(systemName: "bag.fill")
        
        return UINavigationController(rootViewController: merchVC)
        
    }
    
    private func createCartVC() -> UINavigationController {
        
        let cartVC = CartVC()
        
        cartVC.tabBarItem.image = UIImage(systemName: "cart")
        cartVC.tabBarItem.selectedImage = UIImage(systemName: "cart.fill")
        
        return UINavigationController(rootViewController: cartVC)
        
    }
    
    private func configure(){
        
        tabBar.barTintColor = #colorLiteral(red: 0.9496201873, green: 0.9496201873, blue: 0.9496201873, alpha: 1)
        tabBar.tintColor = #colorLiteral(red: 0.2170326445, green: 0.505137953, blue: 0.1686274558, alpha: 1)
        
        setViewControllers([createHomeVC(), createMerchVC(), createCartVC()], animated: true)
        
        
    }

}


