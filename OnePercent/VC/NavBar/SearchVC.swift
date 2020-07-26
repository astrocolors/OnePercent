//
//  SearchVC.swift
//  OnePercent
//
//  Created by Astro on 7/26/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {
    
    let searchBar = UISearchBar()
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        configureNavBar()
        configureTableView()
        
    }
    
    
    private func configureNavBar(){
        
        let dismissItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(dismissView))
        
        navigationItem.titleView = searchBar
        searchBar.placeholder = "Search Players"
        navigationItem.hidesBackButton = true
        navigationItem.setRightBarButton(dismissItem, animated: true)
        
        navigationItem.rightBarButtonItem?.tintColor = #colorLiteral(red: 0.2156862745, green: 0.5058823529, blue: 0.168627451, alpha: 1)
        
        
    }
    
    private func configureTableView(){
        
        view.addSubview(tableView)
        
        tableView.separatorInset = .zero
        tableView.rowHeight = 60
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
        
    }
    
    @objc func dismissView(){
        
        navigationController?.popViewController(animated: true)
        
    }
}
