//
//  CustomViewVC.swift
//  OnePercent
//
//  Created by Astro on 7/26/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class CustomViewVC: UIViewController {
    
    let choiceArr = [
        
        "Short Sleeves",
        "Long Sleeves",
        "Sweatshirts",
        "Sweatpants",
        "Jerseys",
        "Accessories"
    
    ]
    
    let customView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light 

        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        configureCustomView()
        
    }
    
    private func configureCustomView(){
        
        view.addSubview(customView)
        
        customView.separatorInset = .zero
        customView.rowHeight = 60
        customView.register(CustomViewCell.self, forCellReuseIdentifier: CustomViewCell.reuseID)
        customView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            customView.topAnchor.constraint(equalTo: view.topAnchor),
            customView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            customView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            customView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])

        
    }
    

}

extension CustomViewVC: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let label = choiceArr[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomViewCell.reuseID, for: indexPath) as! CustomViewCell
        
        cell.setup(label: label)
        
        return cell
        
    }
    
}
