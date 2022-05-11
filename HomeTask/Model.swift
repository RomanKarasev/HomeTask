//
//  Model.swift
//  HomeTask
//
//  Created by Роман Карасёв on 11.05.2022.
//

import UIKit

struct Student {
    let studentsName: String
    let studentStatus: String
}

class Model {
    
    var studentsArray = [
        Student.init(studentsName: "Роман", studentStatus: "Студент"),
        Student.init(studentsName: "Никита", studentStatus: "Преподаватель"),
        Student.init(studentsName: "Ольга", studentStatus: "Методист")
    ]
    
}
