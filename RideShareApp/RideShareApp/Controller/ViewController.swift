//
//  ViewController.swift
//  RideShareApp
//
//  Created by Faraz Haider on 27/09/2020.
//  Copyright © 2020 Faraz Haider. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var actionBtn:RoundedShadowButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionBtnWasPressed(_ sender:Any){
        actionBtn.animateButton(shouldLoad: true, withMessage:nil)
    }
}

