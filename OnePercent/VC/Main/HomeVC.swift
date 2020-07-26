//
//  HomeVC.swift
//  OnePercent
//
//  Created by Astro on 7/25/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    let tableView = UITableView()
    let refreshController = UIRefreshControl()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        configureNavBar()
        configureTableView()
        configureRefreshController()
        
    }
    
    
    private func configureNavBar(){
        
        let image: UIImage = UIImage(named: "One Percent (transparent)")!
        let logo = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        logo.contentMode = .scaleAspectFit
        logo.image = image
            
        navigationItem.titleView = logo
        
    }
    
    private func configureTableView(){
        
        view.addSubview(tableView)
        
        tableView.rowHeight = 400
        tableView.separatorInset = .zero
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
        
    }
    
    private func configureRefreshController(){
        
        tableView.addSubview(refreshController)
        
        refreshController.addTarget(self, action: #selector(refreshView), for: .valueChanged)
        
        refreshController.tintColor = #colorLiteral(red: 0.2156862745, green: 0.5058823529, blue: 0.168627451, alpha: 1)
        
    }
    
    @objc func refreshView(){
        
        print("View Refreshed!")
        
        refreshController.endRefreshing()
        
    }


} 
