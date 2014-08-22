//
//  TipInCellAnimator.swift
//  CardTilt
//
//  Created by Charles Liu on 2014-08-21.
//  Copyright (c) 2014 RayWenderlich.com. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore

class TipInCellAnimator {
    class func animate(cell:UITableViewCell) {
        if let view = cell.contentView {
            let rotationDegrees: CGFloat = -15.0
            let rotationRadians: CGFloat = rotationDegrees * (CGFloat(M_PI)/180.0)
            let offset = CGPointMake(-20, -20)
            var startTransform = CATransform3DIdentity
            startTransform = CATransform3DRotate(CATransform3DIdentity, rotationRadians, 0.0, 0.0, 1.0)
            startTransform = CATransform3DTranslate(startTransform, offset.x, offset.y, 0.0)
            
            view.layer.transform = startTransform
            view.layer.opacity = 0.8
            
           
            UIView.animateWithDuration(1.4) {
                 view.layer.opacity = 1
                 view.layer.opacity = 0.1
            }
        }
    }
}

