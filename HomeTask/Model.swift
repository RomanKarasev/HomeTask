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
    let studentFullName: String
    let studentFullStatus: String
}

class Model {
    
    var studentsArray = [
        Student.init(studentsName: "Роман",
                     studentStatus: "Студент",
                    studentFullName: "Карасёв Роман Николаевич",
                    studentFullStatus: "Cтудент Otus"),
        Student.init(studentsName: "Никита",
                     studentStatus: "Преподаватель",
                    studentFullName: "Токтаров Никита Алексеевич",
                    studentFullStatus: "Преподаватель Otus"),
        Student.init(studentsName: "Ольга",
                     studentStatus: "Методист",
                    studentFullName: "Алёшина Ольга Андреевна",
                    studentFullStatus: "Методист Otus")
    ]
    
}
