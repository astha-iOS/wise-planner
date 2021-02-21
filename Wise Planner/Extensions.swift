//
//  Extensions.swift
//  Wise Planner
//
//  Created by Astha yadav on 21/02/21.
//

import Foundation
import UIKit


extension UIView{
    
    func animationForMoveLeftToRight(view:UIView) {
        
        view.transform = CGAffineTransform(translationX: view.frame.width, y: 0)
                UIView.animate(
                    withDuration: 0.5,
                    delay: 0.08,
                    options: [.curveEaseInOut],
                    animations: {
                        view.transform = CGAffineTransform(translationX: 0, y: 0)
                    })
        }
    
}
