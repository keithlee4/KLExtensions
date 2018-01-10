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
    func barButton(tintColor: UIColor? = .tradingWhite, image: UIImage = GTTheme.backbarButtonImage, target: Any, selector: Selector) -> UIBarButtonItem {
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
        button.addTarget(target, action: selector, for: .touchUpInside)
        let barButton = UIBarButtonItem(customView: button)
        
        return barButton
    }
    
    func changeLeftBarButton(tintColor: UIColor? = .tradingWhite, image: UIImage = GTTheme.backbarButtonImage, target: Any, selector: Selector) {
        self.navigationItem.leftBarButtonItem = barButton(tintColor: tintColor, image: image, target: target, selector: selector)
    }
    
    
    func changeLeftBarButtonToDismissToRoot(tintColor: UIColor? = .tradingWhite, image: UIImage = GTTheme.backbarButtonImage){
        changeLeftBarButton(tintColor: tintColor, image: image, target: self, selector: #selector(UIViewController.dismissRoot(sender:)))
    }
    
    func changeLeftBarButtonToPopToRoot(tintColor: UIColor? = .tradingWhite, image: UIImage = GTTheme.backbarButtonImage){
        changeLeftBarButton(tintColor: tintColor, image: image, target: self, selector: #selector(UIViewController.popToRoot(sender:)))
    }
    
    func createPureTextRightBarButton(title t: String, target: Any?, selector: Selector?) -> UIBarButtonItem {
        let item = UIBarButtonItem.init(title: t, style: .plain, target: target, action: selector)
        if let rBs = self.navigationItem.rightBarButtonItems {
            self.navigationItem.rightBarButtonItems = rBs + [item]
        }else {
            self.navigationItem.rightBarButtonItem = item
        }
        
        return item
    }
    
    func createRightBarButton(image: UIImage?, target: Any, action: Selector, toColor tintColor: UIColor? = UIColor.blue, size: CGSize? = nil, title: String? = nil, isAlignVertical: Bool = false) -> UIButton {
        let button = UIButton(type: .custom)
        let s = size ?? CGSize(width: 30, height: 30)
        button.frame = CGRect(origin: .zero, size: s)
        button.addTarget(target, action: action, for: .touchUpInside)
        var resultImage = image
        if let img = image {
            resultImage = img
            if let tc = tintColor {
                let newImage = img.withRenderingMode(.alwaysTemplate)
                var imgSize : CGSize
                
                imgSize = isAlignVertical ? CGSize.init(width: s.width * 0.5, height: s.height * 0.5) : s
                UIGraphicsBeginImageContextWithOptions(imgSize, false, newImage.scale)
                
                tc.set()
                newImage.draw(in: CGRect(x:0, y:0, width:imgSize.width, height:imgSize.height))
                resultImage = UIGraphicsGetImageFromCurrentImageContext()!
                UIGraphicsEndImageContext()
            }
        }
        
        
        if isAlignVertical {
            button.set(
                image: resultImage,
                title: title ?? "",
                titlePosition: .bottom,
                additionalSpacing: 0,
                state: .normal
            )
            
            button.titleLabel?.font = UIFont.systemFont(ofSize: s.height - (resultImage?.size.height ?? 0))
//            button.titleLabel?.adjustsFontSizeToFitWidth = true
            button.titleLabel?.sizeToFit()
        }else {
            button.setImage(resultImage, for: .normal)
            button.setTitle(title, for: .normal)
            button.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: 8, bottom: 8, right: 8)
        }
        
        
        let barButton = UIBarButtonItem(customView: button)
        if let rBs = self.navigationItem.rightBarButtonItems {
            self.navigationItem.rightBarButtonItems = rBs + [barButton]
        }else {
            self.navigationItem.rightBarButtonItem = barButton
        }
        
        
        return button
    }

    
    //MARK: 將View的行為綁定到右邊的side menu
    func changeBackBarButton(toColor tintColor: UIColor? = .tradingWhite, image: UIImage = GTTheme.backbarButtonImage){
        
        changeLeftBarButton(tintColor: tintColor, image: image, target: self, selector: #selector(UIViewController.pop(sender:)))
    }
    
    func disablePushBackButton(){
        let clearView = UIView.init()
        clearView.backgroundColor = UIColor.clear
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: clearView)
    }
    
    @objc func pop(sender:NSObject?){
        let _ = self.navigationController?.popViewController(animated: true)
    }
    
    @objc func popToRoot(sender: NSObject?){
        let _ = self.navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func dismissRoot(sender:NSObject?){
        self.dismiss(animated: true, completion: nil)
    }
    
}
