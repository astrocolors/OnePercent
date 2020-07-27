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
    let clearCartButton = OPButton(Text: "Clear Cart")
    let checkoutButton = OPButton(Text: "Checkout")
    
    let imageArr = [
    
        UIImage(named: "7"),
        UIImage(named: "3")
    
    ]
    
    let priceArr = [
        
        "$65.00",
        "$35.00"
    
    ]
    
    let nameArr = [
        
        "1% Sweatshirt (Cotton)",
        "1% Black Tee (Polyester)"
        
    ]
    
    let sizeArr = [
        
        "Size: M",
        "Size: XL"
    
    ]
    
    let countArr = [
        
        "Count: 2",
        "Count: 2"
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light 

        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        configureNavBar()
        configureTableView()
        configureRefreshController()
        //configureClearCartButton()
        configureCheckoutButton()
        
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
            
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -120)
            
        ])

    }
    
    private func configureRefreshController(){
        
        tableView.addSubview(refreshController)
        
        refreshController.tintColor = #colorLiteral(red: 0.2156862745, green: 0.5058823529, blue: 0.168627451, alpha: 1)
        
        refreshController.addTarget(self, action: #selector(refreshView), for: .valueChanged)
        
    }
    
    private func configureClearCartButton(){
        
        view.addSubview(clearCartButton)
        
        clearCartButton.addTarget(self, action: #selector(clearCart), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            clearCartButton.topAnchor.constraint(equalTo: view.topAnchor),
            clearCartButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            clearCartButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            clearCartButton.heightAnchor.constraint(equalTo: view.heightAnchor)
            
        ])
        
    }
    
    private func configureCheckoutButton(){
        
        view.addSubview(checkoutButton)
        
        checkoutButton.addTarget(self, action: #selector(pushCheckoutVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            checkoutButton.heightAnchor.constraint(equalToConstant: 50),
            checkoutButton.widthAnchor.constraint(equalToConstant: 200),
            checkoutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            checkoutButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
            
        ])
    }
    
    @objc func refreshView(){
        
        self.perform(#selector(endRefreshing), with: nil, afterDelay: 1.0)
        
    }
    
    @objc func endRefreshing(){
        
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
    
    @objc func clearCart(){
        
        print("Cart Cleared")
        
    }
    
    @objc func pushCheckoutVC(){
        
        let checkoutVC = CheckoutVC()
        
        navigationController?.pushViewController(checkoutVC, animated: true)
        
    }
    
}

extension CartVC: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return imageArr.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let image = imageArr[indexPath.row]
        let name  = nameArr[indexPath.row]
        let price = priceArr[indexPath.row]
        let size  = sizeArr[indexPath.row]
        let count = countArr[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CartCell.reuseID, for: indexPath) as! CartCell
        
        cell.setup(Image: image!, ItemName: name, Price: price, Size: size, Quantity: count)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        
        let removeItem = UIContextualAction(style: .destructive, title: "") { (action, view, handler) in
            
            handler(true)
            
        }
        
        removeItem.image = UIImage(systemName: "multiply")
        
        removeItem.backgroundColor = .red
        
        let swipeActions = UISwipeActionsConfiguration(actions: [removeItem])
        
        return swipeActions
        
    }
      
}
