//
//  Post.swift
//  JSON
//
//  Created by test1 on 3/11/20.
//  Copyright © 2020 test1. All rights reserved.
//

import Foundation

class Post {
// HEY JUDE WAZ UP THESE VARISBLES SUPPOSE TO SAVE THE DATA COMING FROM THE JSON FILE ... I DID THE SAME LIKE YOU DID WITH THE CATEGORIES ..HOPE I DID IT RIGHT!! :)
var id: Int!
var userId: String!
var title: String
var contnet: String!
var image: String!
var categoryId: String!
var tags: String!
var name: String!
var picture: String!
var rate: Int!
var view: Int!
var status: Int!

    
    init(userId: String, id: Int ,title : String, content : String, image : String , categoryId : String , tags : String , name : String , picture : String , rate : Int , view : Int , status : Int) {
    self.userId = userId
    self.id = id
        self.title = title
        self.contnet = content
        self.image = image
        self.categoryId = categoryId
        self.tags = tags
        self.name = name
        self.picture = picture
        self.rate = rate
        self.view = view
        self.status = status

}

}
