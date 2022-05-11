//
//  InfoTableViewController.swift
//  HomeTask
//
//  Created by Роман Карасёв on 11.05.2022.
//

import UIKit

class InfoTableViewController: UITableViewController {
    
    
    let model = Model()
    let fullInfo = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
  
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.studentsArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FullInfoTableViewCell
        let students = model.studentsArray[indexPath.row]
        cell.textLabel?.text = students.studentsName
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0: print("1")
        case 1: print("2")
        case 2: print("3")
        default:
            break
        }
    }
}

extension InfoTableViewController: ChangeDelegate {
    func changeModel(indexPath: IndexPath) {
    }
}
