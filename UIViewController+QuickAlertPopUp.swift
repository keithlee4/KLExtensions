//
//  UIViewController+QuickAlertPopUp.swift
//  KLTreeDrawerModel
//
//  Created by keith.lee on 2016/10/7.
//  Copyright © 2016年 Keith. All rights reserved.
//

import UIKit

extension UIViewController {
    static func showSimplePopUpOnTop(with title:String, contents:String, cancelTitle: String, cancelHandler: ((_ action:UIAlertAction) -> Void)?){
        guard let topVC = UIApplication.topViewController() else {
            return
        }
        
        topVC.showSimplePopUp(with: title, contents: contents, cancelTitle: cancelTitle, cancelHandler: cancelHandler)
    }
    
    func showSimplePopUp(with title:String, contents:String, cancelTitle: String, cancelHandler: ((_ action:UIAlertAction) -> Void)?){
        DispatchQueue.main.async {
            let alert = UIAlertController.simplePopUp(with: title, contents: contents, cancelTitle: cancelTitle, cancelHandler: cancelHandler)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func showAPIErrorResponsePopUp(from error:GTServerAPIError?, cancelTitle:String, handler: ( () -> Void )? = nil){
        var errorMessage = ""
        var titleMessage = ""
        
        var finalHandler = handler
        
        if let err = error {
            switch err {
            case .appDisabled:
                titleMessage = LS.g_d_appdisable_title
                errorMessage = LS.g_d_appdisable_msg
                finalHandler = {
                    exit(0)
                }
            default:
                titleMessage = LS.g_a_t_error
                errorMessage = err.descString
            }
            
        }
        
        self.showSimplePopUp(with: titleMessage, contents: errorMessage, cancelTitle: cancelTitle, cancelHandler: { action in
            if let h = finalHandler {
                h()
            }
        })
    }
    
}
