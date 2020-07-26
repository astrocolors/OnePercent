//
//  SettingsVC.swift
//  OnePercent
//
//  Created by Astro on 7/26/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {
    
    let settingsView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        configureTableView()
    }
    
    private func configureTableView(){
        
        view.addSubview(settingsView)
        
        settingsView.separatorInset = .zero
        settingsView.rowHeight = 60
        settingsView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            settingsView.topAnchor.constraint(equalTo: view.topAnchor),
            settingsView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            settingsView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            settingsView.heightAnchor.constraint(equalTo: view.heightAnchor)
            
        ])
        
    }

}
