//
//  UIViewController+StoryboardInstance.swift
//  UniversalModule
//
//  Created by keith.lee on 2016/10/11.
//  Copyright © 2016年 git4u. All rights reserved.
//

import UIKit
extension UIViewController {
    public class var storybordName: String {
        return self.nameOfClass
    }
    
    static func storyboardInstance(from name:String? = nil) -> UIViewController? {
        let sb = UIStoryboard.init(name: name ?? self.storybordName, bundle: nil)
        guard let initialVC = sb.instantiateInitialViewController() else{
            printNoViewControllerWarningMessage(of: name ?? self.storybordName)
            return nil
        }
        return initialVC
    }
}
