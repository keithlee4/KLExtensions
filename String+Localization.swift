//
//  String+Localization.swift
//  UniversalModule
//
//  Created by keith.lee on 2016/11/7.
//  Copyright © 2016年 git4u. All rights reserved.
//

import Foundation
extension String {
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}
