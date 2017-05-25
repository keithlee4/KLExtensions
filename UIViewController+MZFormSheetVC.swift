//
//  UIViewController+MZFormSheetVC.swift
//  wddouble
//
//  Created by keith.lee on 2016/12/19.
//  Copyright © 2016年 git4u. All rights reserved.
//

import UIKit
import MZFormSheetPresentationController

extension UIViewController {
    var formSheetDefaultSize: CGSize {
        get {
            let screenSize = UIScreen.main.bounds.size
            return CGSize.init(width: screenSize.width - 24, height: screenSize.height * 0.8)
        }
    }
    
    func formSheetVC(size: CGSize? = nil) -> MZFormSheetPresentationViewController {
        var targetSize : CGSize = .zero
        if let s = size {
            targetSize = s
        }else {
            targetSize = formSheetDefaultSize
        }
        
        let formSheetController = MZFormSheetPresentationViewController(contentViewController: self)
        formSheetController.presentationController?.contentViewSize = targetSize
        // or pass in UILayoutFittingCompressedSize to size automatically with auto-layout
        formSheetController.presentationController?.shouldCenterHorizontally = true
        formSheetController.presentationController?.shouldCenterVertically = true
        
        return formSheetController
    }
    
}
