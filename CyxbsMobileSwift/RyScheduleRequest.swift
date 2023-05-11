//
//  RyScheduleRequest.swift
//  CyxbsMobileSwift
//
//  Created by SSR on 2023/5/10.
//

import Foundation
import Alamofire
import SwiftyJSON

struct RyScheduleRequest {
    
    enum Kind: String {
        case student
        case teacher
        case custom
    }
    
    static let current: RyScheduleRequest = {
        var request = RyScheduleRequest()
        return request
    }()
    
    private static func request(sno: String, kind: Kind) -> DataRequest {
        AF.request(CyxbsBaseURL.beProd + "/magipoke-jwzx/kebiao", method: .post, parameters: ["stu_num" : sno])
    }
}

extension RyScheduleRequest {
    static func request(sno: String, kind: Kind, success: @escaping (AnyObject) -> Void, failure: @escaping (AnyObject) -> Void) {
        request(sno: sno, kind: kind).responseDecodable(of: JSON.self) { response in
            print(response)
        }
    }
}
