//
//  RySchedulePersonalKey.swift
//  CyxbsMobileSwift
//
//  Created by SSR on 2023/5/11.
//

import Foundation

struct RySchedulePersonalKey {
    
    let sno: String
    let type: RyScheduleRequest
    
    var startSinse1970: TimeInterval = 0
    
    init(sno: String, type: RyScheduleRequest) {
        self.sno = sno
        self.type = type
        
        
    }
}
