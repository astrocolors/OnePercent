//
//  CartVC.swift
//  OnePercent
//
//  Created by Shamik Patro on 7/26/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class CartVC: UIViewController {
    
    let tableView = UITableView()
    let checkoutButton = UIButton(frame: CGRect(x: 0, y: 0, width: 400, height: 50))

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        configureNavBar()
        //configureCheckoutButton()
        //configureTableView()
        
    }
    
    private func configureNavBar(){
        
        let image: UIImage = UIImage(named: "One Percent (transparent)")!
        let logo = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        logo.contentMode = .scaleAspectFit
        logo.image = image
        
        let profileItem = UIBarButtonItem(image: UIImage(systemName: "person"), style: .plain, target: self, action: #selector(pushProfileVC))
            
        navigationItem.titleView = logo
        navigationItem.setRightBarButton(profileItem, animated: true)
        
        navigationItem.rightBarButtonItem?.tintColor = #colorLiteral(red: 0.2156862745, green: 0.5058823529, blue: 0.168627451, alpha: 1)
        
    }
    
    private func configureTableView(){
        
        view.addSubview(tableView)
        
        tableView.separatorInset = .zero
        tableView.rowHeight = 100
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: checkoutButton.topAnchor, constant: 40)
            
        ])

    }
    
    private func configureCheckoutButton(){
        
        view.addSubview(checkoutButton)
        
        checkoutButton.backgroundColor = #colorLiteral(red: 0.2156862745, green: 0.5058823529, blue: 0.168627451, alpha: 1)
        checkoutButton.setTitle("Checkout", for: .normal)
        checkoutButton.layer.cornerRadius = 10
        checkoutButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            checkoutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            checkoutButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            
        ])
        
    }
    
    @objc func pushProfileVC(){
        
        let profileVC = ProfileVC()
        
        navigationController?.pushViewController(profileVC, animated: true)
        
    }
    
}
