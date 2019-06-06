//
//  Day.swift
//  ClassCalendar_WithHomework
//
//  Created by Soft Dev Student on 6/4/19.
//  Copyright © 2019 Alice Zhong. All rights reserved.
//

import Foundation

class Day: Codable {
    var name: String
    var firstPeriod: Class
    var longBlock: Class
    var beforeLunch: Class
    var afterLunch: Class
    var xBlock: Class
    
    init(name: String, firstPeriod: Class, longBlock: Class, beforeLunch: Class, afterLunch: Class, xBlock: Class) {
        self.name = name
        self.firstPeriod = firstPeriod
        self.longBlock = longBlock
        self.beforeLunch = beforeLunch
        self.afterLunch = afterLunch
        self.xBlock = xBlock
    }
}

