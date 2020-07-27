//
//  HomeCell.swift
//  OnePercent
//
//  Created by Astro on 7/26/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {

    static let reuseID = "HomeCell"
    
    let iv = UIImageView()
    let title = UILabel()
    let announcement = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureTitle()
        configureImageView()
        configureAnnouncement()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    private func configureImageView(){
        
        addSubview(iv)
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 10
        iv.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([

            iv.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 10),
            iv.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            iv.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iv.bottomAnchor.constraint(equalTo: centerYAnchor)
            
        ])
        
    }
    
    private func configureTitle(){
        
        addSubview(title)
        
        title.text = "New Merch!"
        title.font = UIFont(name: "AvenirNext-Bold", size: 30)
        
        title.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            title.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            title.heightAnchor.constraint(equalToConstant: 30)
            
        ])
        
        
    }
    
    private func configureAnnouncement(){
        
        addSubview(announcement)
        
        announcement.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquet risus feugiat in ante metus. Id aliquet lectus proin nibh nisl condimentum id venenatis a. Ipsum dolor sit amet consectetur adipiscing. Vulputate odio ut enim blandit volutpat maecenas volutpat. Commodo elit at imperdiet dui accumsan. Pulvinar proin gravida hendrerit lectus a. Gravida rutrum quisque non tellus orci. Semper risus in hendrerit gravida. Diam volutpat commodo sed egestas egestas fringilla. Senectus et netus et malesuada fames ac. Viverra nibh cras pulvinar mattis. Enim nec dui nunc mattis enim ut. Elit ullamcorper dignissim cras tincidunt lobortis feugiat. Iaculis eu non diam phasellus vestibulum lorem sed risus ultricies. Urna cursus eget nunc scelerisque."
        
        announcement.font = UIFont(name: "AvenirNextCondensed-Regular", size: 17)
        announcement.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        announcement.numberOfLines = 15
        
        announcement.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            announcement.topAnchor.constraint(equalTo: iv.bottomAnchor, constant: 5),
            announcement.leadingAnchor.constraint(equalTo: iv.leadingAnchor, constant: 2),
            announcement.trailingAnchor.constraint(equalTo: iv.trailingAnchor, constant: -2),
            announcement.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -5)
            
        ])

    }
    
}
