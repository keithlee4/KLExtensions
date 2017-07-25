//
//  GTThemeStyle.swift
//  UniversalModule
//
//  Created by tiger.huang on 2016/12/1.
//  Copyright © 2016年 git4u. All rights reserved.
//

import Foundation
import UIKit

enum GTThemeType {
    //UM1215
    case umDarkBlue
    case umBrightOrange
    
    //WDD
    case wddDarkBlue
    
    //EC
    case ecBrightOrange
    
    var imageSuffixDesc: String {
        switch self {
        case .umBrightOrange:
            return "Bright"
        case .umDarkBlue:
            return "Dark"
        default:
            return ""
        }
    }
}

struct GTTheme{
    
    //MARK: - Layout / Images -
    //MARK: Main
    static var backbarButtonImage: UIImage = #imageLiteral(resourceName: "mainBackBarButton")
    static var mainBackgroundImage: UIImage = #imageLiteral(resourceName: "mainBackground")
    
    //MARK: - Colors -
    //Generic
    //Application
    static var mainColor = UIColor.GTWhite
    
    //Segment-Type Component
    static var segSelectedStateTitleColor = UIColor.GTWhite
    static var segNormalStateTitleColor = UIColor.GTWhite
    
    static var segSelectedStateBGColor = UIColor.GTWhite
    static var segNormalStateBGColor = UIColor.GTWhite
    
    //TextField
    static var inputTextfieldColor = UIColor.GTWhite
    static var inputTextfieldPlaceHolderColor = UIColor.GTWhite
    static var inputTextfieldBorderColor = UIColor.GTWhite
    
    //Separator
    static var bottomLineColor = UIColor.GTWhite
    
    //Table View Cell
    static var tableViewHeaderBgColor = UIColor.GTWhite
    static var tableViewTopCellBgColor = UIColor.GTWhite
    
    //  Main Info Cell (cell with only label type)
    static var infoCellTitleColor = UIColor.GTWhite
    static var infoCellContentColor = UIColor.GTWhite
    
    
    //Collection View Cell
    static var cardShadowColor = UIColor.GTWhite
    static var cardContentTitleColor = UIColor.GTWhite
    static var cardHeaderBGColor = UIColor.GTWhite
    
    //Button
    static var colorBtnBgColor = UIColor.GTWhite
    static var colorBtnTitleColor = UIColor.GTWhite
    static var colorBtnTitleDisabledColor = UIColor.lightGray
    
    static var btnBgColor = UIColor.GTWhite
    static var btnTitleColor = UIColor.GTWhite
    
    //Label / Plain Text
    static var textColor1 = UIColor.GTWhite
    static var textColor2 = UIColor.GTWhite
    static var textColor3 = UIColor.GTWhite
    
    static var textColorForCurrency = UIColor.GTWhite
    static var textColorForWarning = UIColor.GTWhite
    
    //Nav Bar
    static var navTintColor = UIColor.GTWhite
    static var navTitleColor = UIColor.GTWhite
    static var navTitleFont = UIFont.systemFont(ofSize: 17)
    
    //Specific
    static var splitterViewColor = UIColor.GTWhite
    static var baseViewControllerBgColor = UIColor.GTWhite
    static var mainPagecurrencyTypeViewColor = UIColor.GTWhite
    static var titleColor1 = UIColor.GTWhite
    static var infoDeskMSGStatus0 = UIColor.GTWhite
    static var infoDeskMSGStatus1 = UIColor.GTWhite
    static var infoDeskMSGStatus2 = UIColor.GTWhite
    static var stepTitleColor = UIColor.GTWhite
    static var sideBarTableViewBgColor = UIColor.GTWhite
    static var infoDeskDateLabelColor = UIColor.GTWhite
    static var infoDeskListTitleColor = UIColor.GTWhite
    static var realtimeMarkeVariationLabelColor = UIColor.GTWhite
    static var datePickerTextColor = UIColor.GTWhite
    
    //Specific - WDD
    static var tableViewDisplayImageViewBorderColor = UIColor.wddWarmGrey
    static var tableViewDisplayImageViewBackgroundColor = UIColor.wddWhite
    static var btcRechargeTitleLabelColor = UIColor.wddWhite
    static var btcRechageNotiLabelColor = UIColor.wddBrownishGrey
    
    
    //Specific - EC
    static var originPriceTextColor = UIColor.GTPinkishGrey
    
    static func loadTheme(with type: GTThemeType){
        switch type {
        case .umDarkBlue:
            themeDarkBlue()
        case .umBrightOrange:
            themeOrangeWhite()
        case .wddDarkBlue:
            wddThemeDarkBlue()
        case .ecBrightOrange:
            ecThemeBrightOrange()
        }
    }
    
    static func ecThemeBrightOrange() {
        //系統介面顏色
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
        UINavigationBar.appearance().tintColor = UIColor.ecTangerine
        UINavigationBar.appearance().titleTextAttributes =
            [
                NSForegroundColorAttributeName : UIColor.ecCamoGreen,
                NSFontAttributeName : UIFont(name: "PingFangTC-Regular", size: 17.0)!
        ]
        
        
        
        navTintColor = UIColor.ecTangerine
    }
    
    static func wddThemeDarkBlue(){
        //系統介面顏色
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        
        mainColor = UIColor.wddNavy
        
        //共用性高的元件顏色
        tableViewHeaderBgColor = UIColor.wddNavy
        tableViewTopCellBgColor = UIColor.clear
        
        btnBgColor = UIColor.wddNavy
        btnTitleColor = UIColor.GTWhite
        colorBtnBgColor = UIColor.wddNavy
        colorBtnTitleColor = UIColor.GTWhite
        
        cardShadowColor = UIColor.darkGray
        cardContentTitleColor = UIColor.wddBrownishGrey
        cardHeaderBGColor = UIColor.wddTwilightBlue
        
        inputTextfieldColor = UIColor.GTBlack
        inputTextfieldPlaceHolderColor = UIColor.wddWarmGrey
        inputTextfieldBorderColor = UIColor.wddBlack
        
        bottomLineColor = UIColor.wddWarmGrey
        
        segSelectedStateTitleColor = UIColor.GTWhite
        segNormalStateTitleColor = UIColor.wddNavy
        segSelectedStateBGColor = UIColor.wddNavy
        segNormalStateBGColor = UIColor.GTWhite
        
        textColor1 = UIColor.wddBlack
        textColor2 = UIColor.wddNavy
        textColor3 = UIColor.GTWhite
        textColorForCurrency = UIColor.wddPaleRed
        textColorForWarning = UIColor.wddPaleRed
        
        datePickerTextColor = UIColor.wddWarmGrey
        splitterViewColor = UIColor.GTWhite
        
        //特定頁面的特定顏色
        titleColor1 = UIColor.GTWhite
        btcRechargeTitleLabelColor = UIColor.wddTwilightBlue
        
        baseViewControllerBgColor = UIColor.GTDarkSlateBlueTwo
        mainPagecurrencyTypeViewColor = UIColor.wddNavy
        
        infoDeskMSGStatus0 = UIColor.GTCoralPink
        infoDeskMSGStatus1 = UIColor.GTGoldenrod
        infoDeskMSGStatus2 = UIColor.GTPinkishGrey
        
        stepTitleColor = UIColor.GTGoldenrod
        sideBarTableViewBgColor = UIColor.clear
        
        infoDeskDateLabelColor = UIColor.GTBluegrey
        infoDeskListTitleColor = UIColor.GTWhite
        
        realtimeMarkeVariationLabelColor = UIColor.GTGoldenrod
        
        //Main Info Cell
        infoCellTitleColor = UIColor.wddWarmGrey
        infoCellContentColor = UIColor.wddBlack
    }
    
    static func themeOrangeWhite(){
        //系統介面顏色
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.default
        UINavigationBar.appearance().tintColor = UIColor.black
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.black]
        
        //共用性高的元件顏色
        inputTextfieldColor = UIColor.GTDark
        inputTextfieldPlaceHolderColor = UIColor.GTWarmGrey
        bottomLineColor = UIColor.GTDarkAlpha
        colorBtnBgColor = UIColor.GTBrightOrangeTwo
        colorBtnTitleColor = UIColor.GTWhite
        btnTitleColor = UIColor.GTBrightOrangeTwo
        tableViewTopCellBgColor = UIColor.GTBrightOrangeTwo
        btnBgColor = UIColor.GTBrightOrangeTwo
        segSelectedStateBGColor = UIColor.GTBrightOrangeTwo
        textColor1 = UIColor.GTDark
        textColor2 = UIColor.GTRed
        textColor3 = UIColor.GTBrightOrangeTwo
        datePickerTextColor = UIColor.white
        
        //特定頁面的特定顏色
        titleColor1 = UIColor.GTBrightOrangeTwo
        baseViewControllerBgColor = UIColor.GTVeryLightPink
        mainPagecurrencyTypeViewColor = UIColor.GTBrightOrangeTwo
        infoDeskMSGStatus0 = UIColor.GTRed
        infoDeskMSGStatus1 = UIColor.GTBrightOrange
        infoDeskMSGStatus2 = UIColor.GTBrownishGrey
        stepTitleColor = UIColor.GTBrownishGrey
        sideBarTableViewBgColor = UIColor.white
        infoDeskDateLabelColor = UIColor.GTWarmGrey
        infoDeskListTitleColor = UIColor.black
        realtimeMarkeVariationLabelColor = UIColor.GTBrightOrangeTwo
    }
    
    static func themeDarkBlue(){
        //系統介面顏色
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        
        //共用性高的元件顏色
        tableViewTopCellBgColor = UIColor.GTCoolBlue
        btnBgColor = UIColor.GTCoolBlue
        inputTextfieldColor = UIColor.white
        inputTextfieldPlaceHolderColor = UIColor.GTBluegrey
        bottomLineColor = UIColor.GTWhiteAlpha
        colorBtnBgColor = UIColor.GTCoolBlue
        colorBtnTitleColor = UIColor.GTWhite
        btnTitleColor = UIColor.GTWhite
        segSelectedStateBGColor = UIColor.GTCoolBlue
        textColor1 = UIColor.white
        textColor2 = UIColor.GTCoralPink
        textColor3 = UIColor.GTGoldenrod
        datePickerTextColor = UIColor.GTPinkishGrey
        
        //特定頁面的特定顏色
        titleColor1 = UIColor.GTGoldenrod
        baseViewControllerBgColor = UIColor.GTDarkSlateBlueTwo
        mainPagecurrencyTypeViewColor = UIColor.GTCoolBlue
        infoDeskMSGStatus0 = UIColor.GTCoralPink
        infoDeskMSGStatus1 = UIColor.GTGoldenrod
        infoDeskMSGStatus2 = UIColor.GTPinkishGrey
        stepTitleColor = UIColor.GTGoldenrod
        sideBarTableViewBgColor = UIColor.GTPaleGrey
        infoDeskDateLabelColor = UIColor.GTBluegrey
        infoDeskListTitleColor = UIColor.white
        realtimeMarkeVariationLabelColor = UIColor.GTGoldenrod
    }
}


//MARK: - Color Extensions -
//MARK: UM1215
extension UIColor{
    class var GTWhiteAlpha: UIColor {
        return UIColor(white: 255.0 / 255.0, alpha: 0.1)
    }
    class var GTDarkAlpha: UIColor {
        return UIColor(red: 29.0 / 255.0, green: 29.0 / 255.0, blue: 38.0 / 255.0, alpha: 0.1)
    }
}


extension UIColor {
    class var GTBrightBlue: UIColor {
        return UIColor(red: 0.0, green: 122.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
    }
    
    class var GTBrightOrange: UIColor {
        return UIColor(red: 255.0 / 255.0, green: 103.0 / 255.0, blue: 27.0 / 255.0, alpha: 1.0)
    }
    
    class var GTBrownishGrey: UIColor {
        return UIColor(white: 97.0 / 255.0, alpha: 1.0)
    }
    
    class var GTPinkishGrey: UIColor {
        return UIColor(white: 204.0 / 255.0, alpha: 1.0)
    }
    
    class var GTRed: UIColor {
        return UIColor(red: 213.0 / 255.0, green: 17.0 / 255.0, blue: 0.0, alpha: 1.0)
    }
    
    class var GTDarkGrassGreen: UIColor {
        return UIColor(red: 65.0 / 255.0, green: 117.0 / 255.0, blue: 5.0 / 255.0, alpha: 1.0)
    }
    
    class var GTWarmGrey: UIColor {
        return UIColor(white: 153.0 / 255.0, alpha: 1.0)
    }
    
    class var GTDark: UIColor {
        return UIColor(red: 29.0 / 255.0, green: 29.0 / 255.0, blue: 38.0 / 255.0, alpha: 1.0)
    }
    
    class var GTBrightOrangeTwo: UIColor {
        return UIColor(red: 255.0 / 255.0, green: 103.0 / 255.0, blue: 0.0, alpha: 1.0)
    }
    
    class var GTWhite: UIColor {
        return UIColor(white: 255.0 / 255.0, alpha: 1.0)
    }
    
    class var GTVeryLightPink: UIColor {
        return UIColor(red: 254.0 / 255.0, green: 251.0 / 255.0, blue: 246.0 / 255.0, alpha: 1.0)
    }
    
    class var GTWhiteTwo: UIColor {
        return UIColor(white: 250.0 / 255.0, alpha: 1.0)
    }
    
    class var GTBlack: UIColor {
        return UIColor(white: 0.0, alpha: 1.0)
    }
    
    class var GTBrightBlueTwo: UIColor {
        return UIColor(red: 0.0, green: 118.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
    }
    
    class var GTKermitGreen: UIColor {
        return UIColor(red: 62.0 / 255.0, green: 195.0 / 255.0, blue: 0.0, alpha: 1.0)
    }
    
    class var GTBrownishGreyTwo: UIColor {
        return UIColor(white: 102.0 / 255.0, alpha: 1.0)
    }
    
    class var GTWhiteThree: UIColor {
        return UIColor(white: 238.0 / 255.0, alpha: 1.0)
    }
    
    class var GTPaleGrey: UIColor {
        return UIColor(red: 227.0 / 255.0, green: 229.0 / 255.0, blue: 233.0 / 255.0, alpha: 1.0)
    }
    
    class var GTBluegrey: UIColor {
        return UIColor(red: 125.0 / 255.0, green: 155.0 / 255.0, blue: 177.0 / 255.0, alpha: 1.0)
    }
    
    class var GTSlate: UIColor {
        return UIColor(red: 88.0 / 255.0, green: 105.0 / 255.0, blue: 118.0 / 255.0, alpha: 1.0)
    }
    
    class var GTGoldenrod: UIColor {
        return UIColor(red: 244.0 / 255.0, green: 201.0 / 255.0, blue: 8.0 / 255.0, alpha: 1.0)
    }
    
    class var GTDarkSlateBlue: UIColor {
        return UIColor(red: 22.0 / 255.0, green: 55.0 / 255.0, blue: 79.0 / 255.0, alpha: 1.0)
    }
    
    class var GTDarkSlateBlueTwo: UIColor {
        return UIColor(red: 36.0 / 255.0, green: 75.0 / 255.0, blue: 105.0 / 255.0, alpha: 1.0)
    }
    
    class var GTCoralPink: UIColor {
        return UIColor(red: 255.0 / 255.0, green: 105.0 / 255.0, blue: 120.0 / 255.0, alpha: 1.0)
    }
    
    class var GTDarkCoral: UIColor {
        return UIColor(red: 206.0 / 255.0, green: 67.0 / 255.0, blue: 66.0 / 255.0, alpha: 1.0)
    }
    
    class var GTViridian: UIColor {
        return UIColor(red: 33.0 / 255.0, green: 137.0 / 255.0, blue: 126.0 / 255.0, alpha: 1.0)
    }
    
    class var GTWhiteFour: UIColor {
        return UIColor(white: 216.0 / 255.0, alpha: 1.0)
    }
    
    class var GTCoolBlue: UIColor {
        return UIColor(red: 65.0 / 255.0, green: 139.0 / 255.0, blue: 192.0 / 255.0, alpha: 1.0)
    }
    
}

//MARK: EC
extension UIColor {
    class var ecTangerine: UIColor {
        return UIColor(red: 254.0 / 255.0, green: 143.0 / 255.0, blue: 0.0, alpha: 1.0)
    }
    
    class var ecCamoGreen: UIColor {
        return UIColor(red: 71.0 / 255.0, green: 44.0 / 255.0, blue: 27.0 / 255.0, alpha: 1.0)
    }
    
    class var ecPeriwinkle: UIColor {
        return UIColor(red: 123.0 / 255.0, green: 103.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
    }
    
    class var ecWarmPink: UIColor {
        return UIColor(red: 255.0 / 255.0, green: 79.0 / 255.0, blue: 114.0 / 255.0, alpha: 1.0)
    }
}

//MARK: WDD
extension UIColor {
    class var wddNavy: UIColor {
        return UIColor(red: 2.0 / 255.0, green: 14.0 / 255.0, blue: 57.0 / 255.0, alpha: 1.0)
    }
    
    class var wddWhite: UIColor {
        return UIColor(white: 216.0 / 255.0, alpha: 1.0)
    }
    
    class var wddWarmGrey: UIColor {
        return UIColor(white: 153.0 / 255.0, alpha: 1.0)
    }
    
    class var wddBlack: UIColor {
        return UIColor(white: 51.0 / 255.0, alpha: 1.0)
    }
    
    class var wddDarkSkyBlue: UIColor {
        return UIColor(red: 74.0 / 255.0, green: 144.0 / 255.0, blue: 226.0 / 255.0, alpha: 1.0)
    }
    
    class var wddPaleRed: UIColor {
        return UIColor(red: 219.0 / 255.0, green: 58.0 / 255.0, blue: 52.0 / 255.0, alpha: 1.0)
    }
    
    class var wddBrownishGrey: UIColor {
        return UIColor(white: 102.0 / 255.0, alpha: 1.0)
    }
    
    class var wddTwilightBlue: UIColor {
        return UIColor(red: 9.0 / 255.0, green: 56.0 / 255.0, blue: 133.0 / 255.0, alpha: 1.0)
    }
}

//MARK: TradingP self added
extension UIColor {
    class var tradingLightGradientColor: UIColor {
        return UIColor(red: 0.0 / 255.0, green: 198.0 / 255.0, blue: 224.0 / 255.0, alpha: 0.9)
    }
    
    class var tradingDarkGradientColor: UIColor {
        return UIColor(red: 0.0 / 255.0, green: 148.0 / 255.0, blue: 189.0 / 255.0, alpha: 0.9)
    }
    
    class var tradingNavTitleColor: UIColor {
        return .white
    }
    
    class var tradingTabBarItemNormalColor: UIColor {
        return UIColor(red: 164.0 / 255.0, green: 174.0 / 255.0, blue: 189.0 / 255.0, alpha: 1)
    }
    
    class var tradingTabBarItemSelectedColor: UIColor {
        return UIColor(red: 110.0 / 255.0, green: 132.0 / 255.0, blue: 185.0 / 255.0, alpha: 1)
    }
}

//MARK: TradingP from zeplin style guide
extension UIColor {
    class var tradingBlueyGrey: UIColor {
        return UIColor(red: 164.0 / 255.0, green: 174.0 / 255.0, blue: 189.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingPaleGrey: UIColor {
        return UIColor(red: 220.0 / 255.0, green: 224.0 / 255.0, blue: 233.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingWarmGrey: UIColor {
        return UIColor(white: 155.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingTealish: UIColor {
        return UIColor(red: 61.0 / 255.0, green: 204.0 / 255.0, blue: 199.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingDarkishPink: UIColor {
        return UIColor(red: 218.0 / 255.0, green: 65.0 / 255.0, blue: 103.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingCerulean: UIColor {
        return UIColor(red: 2.0 / 255.0, green: 123.0 / 255.0, blue: 206.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingBattleshipGrey: UIColor {
        return UIColor(red: 101.0 / 255.0, green: 112.0 / 255.0, blue: 132.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingTealishTwo: UIColor {
        return UIColor(red: 35.0 / 255.0, green: 181.0 / 255.0, blue: 211.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingPinkish: UIColor {
        return UIColor(red: 224.0 / 255.0, green: 109.0 / 255.0, blue: 137.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingBlack50: UIColor {
        return UIColor(white: 0.0, alpha: 0.5)
    }
    
    class var tradingCeruleanTwo: UIColor {
        return UIColor(red: 0.0, green: 148.0 / 255.0, blue: 189.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingDarkSkyBlue: UIColor {
        return UIColor(red: 75.0 / 255.0, green: 190.0 / 255.0, blue: 214.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingCoral: UIColor {
        return UIColor(red: 249.0 / 255.0, green: 84.0 / 255.0, blue: 84.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingCharcoalGrey: UIColor {
        return UIColor(red: 54.0 / 255.0, green: 68.0 / 255.0, blue: 61.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingPerrywinkle: UIColor {
        return UIColor(red: 121.0 / 255.0, green: 173.0 / 255.0, blue: 220.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingDusk: UIColor {
        return UIColor(red: 61.0 / 255.0, green: 80.0 / 255.0, blue: 110.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingWaterBlue: UIColor {
        return UIColor(red: 22.0 / 255.0, green: 178.0 / 255.0, blue: 221.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingWindowsBlue: UIColor {
        return UIColor(red: 69.0 / 255.0, green: 176.0 / 255.0, blue: 206.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingMediumGreen: UIColor {
        return UIColor(red: 56.0 / 255.0, green: 190.0 / 255.0, blue: 74.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingBrownishGrey: UIColor {
        return UIColor(white: 106.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingBlueGrey: UIColor {
        return UIColor(red: 88.0 / 255.0, green: 118.0 / 255.0, blue: 133.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingCloudyBlue: UIColor {
        return UIColor(red: 177.0 / 255.0, green: 221.0 / 255.0, blue: 211.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingWhite: UIColor {
        return UIColor(white: 240.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingWhiteTwo: UIColor {
        return UIColor(white: 246.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingTangerine: UIColor {
        return UIColor(red: 255.0 / 255.0, green: 135.0 / 255.0, blue: 0.0, alpha: 1.0)
    }
    
    class var tradingPaleGreyThree: UIColor {
        return UIColor(red: 250.0 / 255.0, green: 251.0 / 255.0, blue: 253.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingPaleGreyFour: UIColor {
        return UIColor(red: 242.0 / 255.0, green: 245.0 / 255.0, blue: 247.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingPaleGreyFive: UIColor {
        return UIColor(red: 242.0 / 255.0, green: 244.0 / 255.0, blue: 246.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingRobinEggBlue: UIColor {
        return UIColor(red: 151.0 / 255.0, green: 255.0 / 255.0, blue: 247.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingWhiteThree: UIColor {
        return UIColor(white: 233.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingDuskTwo: UIColor {
        return UIColor(red: 63.0 / 255.0, green: 96.0 / 255.0, blue: 114.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingGunmetal: UIColor {
        return UIColor(red: 84.0 / 255.0, green: 85.0 / 255.0, blue: 86.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingWhiteFour: UIColor {
        return UIColor(white: 249.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingWarmGreyTwo: UIColor {
        return UIColor(white: 153.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingWhiteFive: UIColor {
        return UIColor(white: 216.0 / 255.0, alpha: 1.0)
    }
    
    class var tradingCloudyBlueTwo: UIColor {
        return UIColor(red: 182.0 / 255.0, green: 196.0 / 255.0, blue: 210.0 / 255.0, alpha: 1.0)
    }
}
