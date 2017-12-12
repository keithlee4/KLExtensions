//
//  ServerAPIErrorTypes.swift
//  UniversalModule
//
//  Created by keith.lee on 2016/10/17.
//  Copyright © 2016年 git4u. All rights reserved.
//

import Foundation
//import Flurry_iOS_SDK

enum GTServerAPIError: Error {
    case noData
    case incorrectResult(String, String)
    case noInternet
    case invalidToken
    case apiReject
    case invalidVerision
    case appDisabled
    
    //This case should directly pass response error to input
    case unknown(Error)
    
    var descString: String {
        get {
            switch self {
            case .incorrectResult(_, let message):
                return message
            case .noData:
                return "Data not found"
            case .noInternet:
                return LS.g_a_network_error
            case .invalidToken:
                return "Invalid Token"
            case .unknown(let err):
                return err.localizedDescription
            case .apiReject:
                return LS.g_a_c_serverAuthFailed
            case .invalidVerision:
                return LS.g_updatemessage
            case .appDisabled:
                return "App Is Disabled Currently"
            }
        }
    }
}

class ServerAPIErrorHandler : NSObject {
    static func serverErrorType(of originError:Error) -> GTServerAPIError {
        return .unknown(originError)
    }
    
    static func serverWrongResultError(code: String, message:String) -> GTServerAPIError {
        return .incorrectResult(code, message)
    }
    
    static func serverNoDataError() -> GTServerAPIError {
        return .noData
    }
}
