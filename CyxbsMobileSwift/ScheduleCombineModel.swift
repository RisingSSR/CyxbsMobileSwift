//
//  ScheduleCombineModel.swift
//  CyxbsMobileSwift
//
//  Created by SSR on 2022/11/17.
//

import Foundation

struct ScheduleCombineModel {
    let sno: String
    let requestType: ScheduleCourse.RequestType
    var id: String { requestType.rawValue + sno }
    
    
    private var courses = Array<Array<ScheduleCourse>>(repeating: Array<ScheduleCourse>(), count: 7)
    
    mutating func append(_ course: ScheduleCourse) {
        courses[course.inWeek - 1].append(course)
    }
}
