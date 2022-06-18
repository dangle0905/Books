//
//  Book.swift
//  Books
//
//  Created by Dang Le on 6/18/22.
//

import Foundation
import SwiftUI

//a structure is public compare to a class
// the ":" basicaly means "of type" in this case
//the struct is of type Hashable and Codable
struct Book: Hashable, Codable, Identifiable {
    
    //properties we are declaring for this struct
    var id: Int
    var name: String
    var genre: String
    var price: String
    var author: String
    var description: String
    
    private var imageName: String
    
    //to use struct Image you must import SwiftUI
    var image: Image {
        Image(imageName)
    }
}
