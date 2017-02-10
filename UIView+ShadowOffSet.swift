//
//  UIView+ShadowOffSet.swift
//  wddouble
//
//  Created by Keith Lee on 2016/12/26.
//  Copyright © 2016年 git4u. All rights reserved.
//

import UIKit

extension UIView {
    func setupShadow(insets: UIEdgeInsets, cornerRadius: CGFloat){
        let rect = CGRect.init(origin: CGPoint.init(x:  insets.left, y:  -insets.top), size: CGSize.init(width: frame.width - ( insets.left + insets.right ), height: frame.height + insets.top + insets.bottom))
        
        let path = UIBezierPath.init(roundedRect: rect, cornerRadius: cornerRadius)
        layer.shadowPath = path.cgPath
    }
}
