//
//  Class.swift
//  ClassCalendar_WithHomework
//
//  Created by Soft Dev Student on 6/4/19.
//  Copyright © 2019 Alice Zhong. All rights reserved.
//

import Foundation

class Class: Codable {
    var name: String
    var room: String
    var teacher: String
    
    init(name: String, room: String, teacher: String) {
        self.name = name
        self.room = room
        self.teacher = teacher
    }
}
