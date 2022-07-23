//
//  Profile.swift
//  Books
//
//  Created by Dang Le on 7/8/22.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    
    static let `default` = Profile(username: "David")
    
    enum Season: String, Identifiable, CaseIterable{
        case spring = "🍎"
        case summer = "🍒"
        case autumn = "🍑"
        case winter = "🍉"
        
        var id: String { rawValue }
    }
}
