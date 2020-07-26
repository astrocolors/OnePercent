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
        
        let sideMenuItem = UIBarButtonItem(image: UIImage(systemName: "line.horizontal.3"), style: .plain, target: self, action: #selector(pushSideMenuVC))
        
        let viewItem = UIBarButtonItem(image: UIImage(systemName: "square.grid.2x2"), style: .plain, target: self, action: #selector(changeView))
        
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
    
    @objc func pushSideMenuVC(){
        
        let sideMenuVC = SideMenuVC()
        
        //navigationController?.pushViewController(sideMenuVC, animated: true)
        
    }
    
    @objc func changeView(){
        
        print("View Changed!")
        
        
        
    }
    
    @objc func refreshView(){
        
        print("View Refreshed!")
        
        refreshController.endRefreshing()
        
    }


} 
