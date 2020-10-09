//
//  CircleView.swift
//  RideShareApp
//
//  Created by Faraz Haider on 09/10/2020.
//  Copyright © 2020 Faraz Haider. All rights reserved.
//

import UIKit

class CircleView: UIView {

    @IBInspectable var borderColor:UIColor?{
        didSet{
            setupView()
        }
    }
    
    override func awakeFromNib() {
        setupView()
    }

    func setupView(){
        self.layer.cornerRadius = self.frame.width/2
        self.layer.borderWidth = 1.5
        self.layer.borderColor = borderColor?.cgColor
    }
}
