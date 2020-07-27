//
//  CartVC.swift
//  OnePercent
//
//  Created by Astro on 7/26/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class CartVC: UIViewController {
    
    let tableView = UITableView()
    let refreshController = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light 

        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        configureNavBar()
        configureTableView()
        configureRefreshController()
        
    }
    
    private func configureNavBar(){
        
        let image: UIImage = UIImage(named: "One Percent (transparent)")!
        let logo = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        logo.contentMode = .scaleAspectFit
        logo.image = image
        
        let notiItem = UIBarButtonItem(image: UIImage(systemName: "bell"), style: .plain, target: self, action: #selector(pushNotiVC))
        
        let profileItem = UIBarButtonItem(image: UIImage(systemName: "person"), style: .plain, target: self, action: #selector(pushProfileVC))
            
        navigationItem.titleView = logo
        
        navigationItem.setLeftBarButton(notiItem, animated: true)
        navigationItem.setRightBarButton(profileItem, animated: true)
        
        navigationItem.leftBarButtonItem?.tintColor = #colorLiteral(red: 0.2156862745, green: 0.5058823529, blue: 0.168627451, alpha: 1)
        navigationItem.rightBarButtonItem?.tintColor = #colorLiteral(red: 0.2156862745, green: 0.5058823529, blue: 0.168627451, alpha: 1)
        
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.2156862745, green: 0.5058823529, blue: 0.168627451, alpha: 1)
        
    }
    
    private func configureTableView(){
        
        view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorInset = .zero
        tableView.rowHeight = 100
        tableView.register(CartCell.self, forCellReuseIdentifier: CartCell.reuseID)
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
        
        refreshController.tintColor = #colorLiteral(red: 0.2156862745, green: 0.5058823529, blue: 0.168627451, alpha: 1)
        
        refreshController.addTarget(self, action: #selector(refreshView), for: .valueChanged)
        
    }
    
    @objc func refreshView(){
        
        print("View Refreshed")
        
        refreshController.endRefreshing()
        
    }
    
    @objc func pushNotiVC(){
        
        let notiVC = NotiVC()
        
        present(notiVC, animated: true)
        
    }
    
    @objc func pushProfileVC(){
        
        let profileVC = ProfileVC()
        
        navigationController?.pushViewController(profileVC, animated: true)
        
    }
    
}

extension CartVC: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CartCell.reuseID, for: indexPath)
        
        return cell
        
    }
      
}
