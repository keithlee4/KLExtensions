//
//  ServerAPIErrorTypes.swift
//  UniversalModule
//
//  Created by keith.lee on 2016/10/17.
//  Copyright © 2016年 git4u. All rights reserved.
//

import Foundation

enum GTServerAPIError: Error {
    case noData
    case incorrectResult(String, String)
    case noInternet
    case invalidToken
    
    //This case should directly pass response error to input
    case unknown(Error)
    
    var descString: String {
        get {
            switch self {
            case .incorrectResult(_, let message):
                return message
            case .noData:
                return "Data not found".localized
            case .noInternet:
                return "Internet not found".localized
            case .invalidToken:
                return "Invalid Token".localized
            case .unknown(let err):
                return err.localizedDescription
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
