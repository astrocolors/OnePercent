//
//  MerchFlowLayout.swift
//  OnePercent
//
//  Created by Astro on 7/26/20.
//  Copyright © 2020 Astronomical. All rights reserved.
//

import UIKit

class MerchFlowLayout: UICollectionViewFlowLayout {
    
    override init() {
        super.init()
        
        scrollDirection = .horizontal
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
