//
//  ProfileVC.swift
//  OnePercent
//
//  Created by Astro on 7/26/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    let userAvatar = UIImageView()
    let userLabel  = UILabel()
    let optionsView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light 

        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        configureNavBar()
        configureUserAvatar()
        configureUserLabel()
        configureUserOptions()
        
    }
    
    private func configureNavBar(){
        
        let settingsItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(pushSettingsVC))
        
        navigationItem.setRightBarButton(settingsItem, animated: true)
        navigationItem.rightBarButtonItem?.tintColor = #colorLiteral(red: 0.2156862745, green: 0.5058823529, blue: 0.168627451, alpha: 1)
        
    }
    
    private func configureUserAvatar(){
        
        view.addSubview(userAvatar)
        
        userAvatar.image = UIImage(named: "ElonMusk")
        userAvatar.clipsToBounds = true
        userAvatar.contentMode = .scaleAspectFill
        userAvatar.layer.cornerRadius = 100
        userAvatar.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            userAvatar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            userAvatar.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userAvatar.heightAnchor.constraint(equalToConstant: 200),
            userAvatar.widthAnchor.constraint(equalToConstant: 200)
            
        ])

    }
    
    private func configureUserLabel(){
        
        view.addSubview(userLabel)
        
        userLabel.text = "@Astronomical"
        
        userLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            userLabel.topAnchor.constraint(equalTo: userAvatar.bottomAnchor, constant: 15),
            userLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
        ])
        
    }
    
    private func configureUserOptions(){
        
        view.addSubview(optionsView)
        
        optionsView.separatorInset = .zero
        optionsView.rowHeight = 50
        optionsView.isScrollEnabled = false
        optionsView.register(ProfileCell.self, forCellReuseIdentifier: ProfileCell.reuseID)
        
        optionsView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            optionsView.topAnchor.constraint(equalTo: userLabel.bottomAnchor),
            optionsView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            optionsView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            optionsView.heightAnchor.constraint(equalTo: view.heightAnchor)
            
        ])

    }
    
    @objc func pushSettingsVC(){
        
        let settingsVC = SettingsVC()
        
        navigationController?.pushViewController(settingsVC, animated: true)
        
    }


}

extension ProfileVC: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ProfileCell.reuseID, for: indexPath)
        
        return cell
        
    }
    
}
