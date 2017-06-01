//
//  UINavigationController+QuickBarItemSetup.swift
//  UniversalModule
//
//  Created by keith.lee on 2016/10/12.
//  Copyright © 2016年 git4u. All rights reserved.
//

import UIKit

extension UIViewController {
    //MARK: 將View的行為綁定到左邊的side menu
    func changeLeftBarButtonToDismissToRoot(tintColor: UIColor? = .tradingNavTitleColor, image: UIImage = GTTheme.backbarButtonImage){
        let button = UIButton(type: .custom)
        var resultImage = image
        if let tc = tintColor {
            let newImage = image.withRenderingMode(.alwaysTemplate)
            UIGraphicsBeginImageContextWithOptions(image.size, false, newImage.scale)
            tc.set()
            newImage.draw(in: CGRect(x:0, y:0, width:image.size.width, height:newImage.size.height))
            
            resultImage = UIGraphicsGetImageFromCurrentImageContext()!
            UIGraphicsEndImageContext()
        }
        
        button.setImage(resultImage, for: .normal)
        button.frame = CGRect(origin: .zero, size: CGSize(width: 30, height: 30))
        button.addTarget(self, action: #selector(UIViewController.dismissRoot(sender:)), for: .touchUpInside)
        let barButton = UIBarButtonItem(customView: button)
        self.navigationItem.leftBarButtonItem = barButton
    }
    
    func changeLeftBarButtonToPopToRoot(tintColor: UIColor? = .tradingNavTitleColor, image: UIImage = GTTheme.backbarButtonImage){
        let button = UIButton(type: .custom)
        var resultImage = image
        if let tc = tintColor {
            let newImage = image.withRenderingMode(.alwaysTemplate)
            UIGraphicsBeginImageContextWithOptions(image.size, false, newImage.scale)
            tc.set()
            newImage.draw(in: CGRect(x:0, y:0, width:image.size.width, height:newImage.size.height))
            resultImage = UIGraphicsGetImageFromCurrentImageContext()!
            UIGraphicsEndImageContext()
        }
        
        button.setImage(resultImage, for: .normal)
        button.frame = CGRect(origin: .zero, size: CGSize(width: 30, height: 30))
        button.addTarget(self, action: #selector(UIViewController.popToRoot(sender:)), for: .touchUpInside)
        let barButton = UIBarButtonItem(customView: button)
        self.navigationItem.leftBarButtonItem = barButton
    }
    
    //MARK: 將View的行為綁定到右邊的side menu
    func changeBackBarButton(toColor tintColor: UIColor? = .tradingNavTitleColor, image: UIImage = GTTheme.backbarButtonImage){
        let button = UIButton(type: .custom)
        var resultImage = image
        if let tc = tintColor {
            let newImage = image.withRenderingMode(.alwaysTemplate)
            UIGraphicsBeginImageContextWithOptions(image.size, false, newImage.scale)
            tc.set()
            newImage.draw(in: CGRect(x:0, y:0, width:image.size.width, height:newImage.size.height))
            resultImage = UIGraphicsGetImageFromCurrentImageContext()!
            UIGraphicsEndImageContext()
        }
        
        button.setImage(resultImage, for: .normal)
        button.frame = CGRect(origin: .zero, size: CGSize(width: 30, height: 30))
        button.addTarget(self, action: #selector(UIViewController.pop(sender:)), for: .touchUpInside)
        let barButton = UIBarButtonItem(customView: button)
        self.navigationItem.leftBarButtonItem = barButton
    }
    
    func disablePushBackButton(){
        let clearView = UIView.init()
        clearView.backgroundColor = UIColor.clear
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: clearView)
    }
    
    func pop(sender:NSObject?){
        let _ = self.navigationController?.popViewController(animated: true)
    }
    
    func popToRoot(sender: NSObject?){
        let _ = self.navigationController?.popToRootViewController(animated: true)
    }
    
    func dismissRoot(sender:NSObject?){
        self.dismiss(animated: true, completion: nil)
    }
    
}
