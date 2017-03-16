//
//  CALayer+BottomBorder.swift
//  
//
//  Created by tiger.huang on 14/03/2017.
//
//

import UIKit

extension CALayer {
    
    func addBorder(color: UIColor, thickness: CGFloat) {
        
        let border = CALayer()
        
        border.frame = CGRectMake(0, self.frame.height - thickness, UIScreen.main.bounds.width, thickness)
        
        let separatorLineImage = UIImage(named: "separatorLine")?.cgImage
        border.contents = separatorLineImage

        self.addSublayer(border)
    }
    
    func CGRectMake(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect {
        return CGRect(x: x, y: y, width: width, height: height)
    }

    
}
