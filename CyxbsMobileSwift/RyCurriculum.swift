//
//  RyCurriculum.swift
//  CyxbsMobileSwift
//
//  Created by SSR on 2022/11/16.
//

import Foundation
import WCDBSwift

// MARK: RyCurriculum

struct RyCurriculum {
    
    // MARK: - Properties
    var inWeek = 0
    var inSections = Set<Int>()
    var period = Range<Int>(uncheckedBounds: (0, 0))

    var course = String()
    var classRoom = String()

    var courseID: String?
    var rawWeek: String?
    var type = String()
    var teacher: String?
    var lesson: String?

    // MARK: RequestType
    public enum RequestType: String, Codable {
        case student = "student"
        case teacher = "teacher"
        case custom = "custom"
    }
}

// MARK: extension Init

extension RyCurriculum {
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

extension RyCurriculum: TableCodable {
    enum CodingKeys: String, CodingTableKey {
        typealias Root = RyCurriculum
        static let objectRelationalMapping = TableBinding(CodingKeys.self)
        case inWeek
        case inSections
        case period

        case course
        case classRoom

        case courseID
        case rawWeek
        case type
        case teacher
        case lesson
    }
}
