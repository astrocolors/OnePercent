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
        
        homeVC.tabBarItem.image = UIImage(systemName: "person")
        homeVC.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        
        return UINavigationController(rootViewController: homeVC)
        
    }
    
    private func createAnnouncementsVC() -> UINavigationController {
        
        let announcementsVC = AnnouncementsVC()
        
        announcementsVC.tabBarItem.image = UIImage(systemName: "person")
        announcementsVC.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        
        return UINavigationController(rootViewController: announcementsVC)
        
    }
    
    private func createVideosVC() -> UINavigationController {
        
        let videosVC = VideosVC()
        
        videosVC.tabBarItem.image = UIImage(systemName: "person")
        videosVC.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        
        
        return UINavigationController(rootViewController: videosVC)
        
    }
    
    private func createMerchVC() -> UINavigationController {
        
        let merchVC = MerchVC()
        
        merchVC.tabBarItem.image = UIImage(systemName: "person")
        merchVC.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        
        return UINavigationController(rootViewController: merchVC)
        
    }
    
    private func configure(){
        
        tabBar.barTintColor = #colorLiteral(red: 0.8609000428, green: 1, blue: 1, alpha: 1)
        
        setViewControllers([createHomeVC(), createAnnouncementsVC(), createVideosVC(), createMerchVC()], animated: true)
        
        
    }

}
