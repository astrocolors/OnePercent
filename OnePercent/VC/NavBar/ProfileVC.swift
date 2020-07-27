//
//  ProfileVC.swift
//  OnePercent
//
//  Created by Astro on 7/26/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light 

        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        configureNavBar()
        
    }
    
    private func configureNavBar(){
        
        let settingsItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(pushSettingsVC))
        
        navigationItem.setRightBarButton(settingsItem, animated: true)
        navigationItem.rightBarButtonItem?.tintColor = #colorLiteral(red: 0.2156862745, green: 0.5058823529, blue: 0.168627451, alpha: 1)
        
    }
    
    @objc func pushSettingsVC(){
        
        let settingsVC = SettingsVC()
        
        navigationController?.pushViewController(settingsVC, animated: true)
        
    }


}
