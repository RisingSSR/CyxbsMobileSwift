//
//  ScheduleCourse.swift
//  CyxbsMobileSwift
//
//  Created by SSR on 2022/11/16.
//

import Foundation
import WCDBSwift

// MARK: ScheduleCourse

struct ScheduleCourse {
    
    // MARK: - Properties
    var inWeek = 0
    var inSections = Set<Int>()
    var period = Range<Int>(uncheckedBounds: (0, 0))

    var course = String()
    var courseNike: String?
    var classRoom = String()
    var classRoomNike: String?

    var courseID: String?
    var rawWeek: String?
    var type = String()
    var teacher: String?
    var lesson: String?

    var sno: String?
    var requestType = RequestType.custom

    // MARK: RequestType
    public enum RequestType: String, Codable {
        case student = "student"
        case teacher = "teacher"
        case custom = "custom"
    }
}

// MARK: extension Init

extension ScheduleCourse {
    init(dictionary dic: Dictionary<String, Any>) throws {
        inWeek = dic["hash_day"] as! Int
        inSections = Set(dic["week"] as! Array)
        
        let location = dic["begin_lesson"] as! Int
        let lenth = dic["period"] as! Int
        period = Range(uncheckedBounds: (location, location + lenth))
        
        course = dic["course"] as! String
        classRoom = dic["classroom"] as! String
        courseID = dic["course_num"] as? String
        rawWeek = dic["rawWeek"] as? String
        type = dic["type"] as! String
        teacher = dic["teacher"] as? String
        lesson = dic["lesson"] as? String
    }
}

// MARK: extension WCDB

extension ScheduleCourse: TableCodable {
    enum CodingKeys: String, CodingTableKey {
        typealias Root = ScheduleCourse
        static let objectRelationalMapping = TableBinding(CodingKeys.self)
        case inWeek
        case inSections
        case period

        case course
        case courseNike
        case classRoom
        case classRoomNike

        case courseID
        case rawWeek
        case type
        case teacher
        case lesson

        case sno
        case requestType
    }
}
