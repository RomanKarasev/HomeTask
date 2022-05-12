//
//  ViewController.swift
//  HomeTask
//
//  Created by Роман Карасёв on 17.04.2022.
//

import UIKit

class ViewController: UIViewController {

	

    let model = Model()
    var selectedStudent: Student?
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var optionLabel: UILabel!
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var showButtonText: UIButton!

	

	override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.isHidden = true
        updateOutlets()
    }
    
    @IBAction func CopyButton(_ sender: UIButton) {
        infoLabel.isHidden = false
    }
    
    @IBAction func showButton(_ sender: UIButton) {
        
        guard let data = selectedStudent
        else {
            return
        }

        if nameLabel.text == data.studentsName {
        nameLabel.text = data.studentFullName
        optionLabel.text = data.studentFullStatus
        showButtonText.setTitle("Show short info", for: .normal)
        } else {
            nameLabel.text = data.studentsName
            optionLabel.text = data.studentStatus
            showButtonText.setTitle("Show full info", for: .normal)
            
        }
    }

	private func updateOutlets() {
		guard let data = selectedStudent
		else {
			return
		}

		nameLabel.text = data.studentsName
		optionLabel.text = data.studentStatus
        
	}
}



