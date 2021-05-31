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
    var image: String = ""
    
    static func getDescription() -> [InfoDescription] {
        [
            InfoDescription(title: "Обо мне", description: "Родился, крестился, женился..", image: "portret"),
             
            InfoDescription(title: "Моя жизнь", description: "Просто рад жить на этой прекрасной планете.", image: "cat"),
            
            InfoDescription(title: "Моя работа", description: "18 лет разностороннего опыта в IT. Дальше будет интереснее!", image: "cat")
        ]
    }
    
}







