//
//  ProfileVC.swift
//  OnePercent
//
//  Created by Shamik Patro on 7/26/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        configureNavBar()
        
    }
    
    private func configureNavBar(){
        
        let settingsItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(pushSettingsVC))
        
        
        
        
        
    }
    
    @objc func pushSettingsVC(){
        
        let settingsVC = SettingsVC()
        
        
        
        
        
        
    }


}
