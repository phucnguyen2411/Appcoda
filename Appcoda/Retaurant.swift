//
//  Retaurant.swift
//  Appcoda
//
//  Created by Phuc .Ng on 3/8/16.
//  Copyright © 2016 com.phucng. All rights reserved.
//


import Foundation


class Restaurant {
    var name:String!
    var type:String! = ""
    var location:String!
    var image:String!
    var isVisited:Bool! = false
    
    
    init(name:String, type:String, location:String, image:String, isVisited:Bool){
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.isVisited = isVisited
    
    }
}


//class Restaurant {
//    var name = ""
//    var type = ""
//    var location = ""
//    var image = ""
//    var isVisited = false
//    
//    init(name:String, type:String, location:String, image:String, isVisited:Bool) {
//        self.name = name
//        self.type = type
//        self.location = location
//        self.image = image
//        self.isVisited = isVisited
//    }
//}