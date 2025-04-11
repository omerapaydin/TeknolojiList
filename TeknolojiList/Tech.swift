//
//  Tech.swift
//  TeknolojiList
//
//  Created by Ömer on 11.04.2025.
//

import Foundation
class Tech {
    var techId:Int?
    var techName:String?
    var texhImage:String?
    var texhPrice:Double?
    
    init() {
        
    }
    
    init(techId:Int,techName:String,texhImage:String,texhPrice:Double) {
        self.techId = techId
        self.techName = techName
        self.texhImage = texhImage
        self.texhPrice = texhPrice
    }
}
