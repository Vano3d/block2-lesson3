//
//  UserData.swift
//  block2-lesson3
//
//  Created by Chupinsky Ivan on 30.05.2021.
//

import UIKit

class UserData {
    let userConst = "Ivan"
    let passConst = "Password"
}

struct InfoDescription {
    var title: String = ""
    var description: String = ""
    
    static func getDescription() -> [InfoDescription] {
        [
            InfoDescription(title: "Обо мне", description: "Родился, крестился, женился.."),
            
            InfoDescription(title: "Моя жизнь", description: "Просто рад жить на этой прекрасной планете."),
            
            InfoDescription(title: "Моя работаю", description: "18 лет разностороннего опыта в IT. Дальше будет интереснее!")
        ]
    }
    
    
}
var descriptionArray = InfoDescription.getDescription()






