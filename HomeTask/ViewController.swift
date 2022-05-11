//
//  ViewController.swift
//  HomeTask
//
//  Created by Роман Карасёв on 17.04.2022.
//

import UIKit

class ViewController: UIViewController {

    let model = Model()
    
    @IBOutlet var nameLabel: UILabel! = {
        let label = UILabel()
        label.text = ""
        return label
    }()
    @IBOutlet var optionLabel: UILabel!
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var showButtonText: UIButton!
    
    
    let info = FullInfoTableViewCell()
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.isHidden = true

    }

        
    @IBAction func CopyButton(_ sender: UIButton) {
        infoLabel.isHidden = false
        
    }
    
//    @IBAction func showButton(_ sender: UIButton) {
//        if nameLabel.text == "Роман" && optionLabel.text == "Студент" {
//            nameLabel.text = "Карасёв Роман Николаевич"
//            optionLabel.text = "Студент Otus"
//            showButtonText.titleLabel?.text = "Show short Info"
//        } else {
//            nameLabel.text = "Роман"
//            optionLabel.text = "Студент"
//            showButtonText.titleLabel?.text = "Show full Info"
//        }
//        
//        
//    }
    
}



