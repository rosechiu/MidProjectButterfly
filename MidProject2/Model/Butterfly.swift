//
//  Butterfly.swift
//  MidProject2
//
//  Created by csie on 2018/5/11.
//  Copyright © 2018年 csie. All rights reserved.
//

import Foundation

class Butterfly{
    var name: String
    var scientific: String
    var image: String
    var food: String
    var description: String
    var location: String
    
    init(name: String,scientific: String,image: String,food: String,description: String,location: String) {
        self.name = name
        self.scientific = scientific
        self.image = image
        self.food = food
        self.description = description
        self.location = location
    }
    convenience init(){
        self.init(name: "",scientific: "",image: "",food: "",description: "",location: "")
    }
}
