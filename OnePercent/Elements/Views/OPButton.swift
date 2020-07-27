//
//  OPButton.swift
//  OnePercent
//
//  Created by Astro on 7/26/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class OPButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: .zero)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
         
    }
    
    init(Text: String) {
        super.init(frame: .zero)
    
        self.setTitle(Text, for: .normal)
        
        configure()
        
    }
    
    private func configure(){
        
        titleLabel?.textColor = .white
        backgroundColor = #colorLiteral(red: 0.2156862745, green: 0.5058823529, blue: 0.168627451, alpha: 1)
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 10
        
    }
    
    
}
