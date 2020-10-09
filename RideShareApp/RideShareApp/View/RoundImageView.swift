//
//  RoundImageView.swift
//  RideShareApp
//
//  Created by Faraz Haider on 08/10/2020.
//  Copyright © 2020 Faraz Haider. All rights reserved.
//

import UIKit

class RoundImageView: UIImageView {
    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView(){
        self.layer.cornerRadius = self.frame.width/2
        self.clipsToBounds = true
    }
}
