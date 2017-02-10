//
//  UIViewController+Nib.swift
//  wddouble
//
//  Created by keith.lee on 2016/12/20.
//  Copyright © 2016年 git4u. All rights reserved.
//

import UIKit

extension UIView {
    static var nib: UINib {
        let n = UINib.init(nibName: self.nameOfClass, bundle: nil)
        return n
    }
}

extension UIViewController {
    static var nib: UINib {
        let n = UINib.init(nibName: self.nameOfClass, bundle: nil)
        return n
    }
}
