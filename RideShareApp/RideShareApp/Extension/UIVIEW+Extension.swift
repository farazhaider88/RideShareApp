//
//  UIVIEW+Extension.swift
//  RideShareApp
//
//  Created by Faraz Haider on 16/11/2020.
//  Copyright © 2020 Faraz Haider. All rights reserved.
//

import UIKit

extension UIView {
    func fadeTo(alpha: CGFloat, withDuration duration: TimeInterval) {
        UIView.animate(withDuration: duration) {
            self.alpha = alpha
        }
    }
}
