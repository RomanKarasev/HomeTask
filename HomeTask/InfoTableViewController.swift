//
//  InfoTableViewController.swift
//  HomeTask
//
//  Created by Роман Карасёв on 11.05.2022.
//

import UIKit

class InfoTableViewController: UITableViewController {

	// MARK: Properties

	let model = Model()
//	let fullInfo = ViewController()
	private let segueIdentifier = "showFullInfo"
	private let fullInfoVCIdentifier = "fullInfoVC"
	private var selectedCellIdx: Int?

	// MARK: View Life Cylce

	override func viewDidLoad() {
		super.viewDidLoad()

	}

	// MARK: TableView

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


		selectedCellIdx = indexPath.row
		performSegue(withIdentifier: segueIdentifier, sender: nil)

    }
	// MARK: Navigation

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == segueIdentifier,
		   let idx = selectedCellIdx,
		   let viewController = segue.destination as? ViewController
		{
			let selectedStudentData = model.studentsArray[idx]
			viewController.selectedStudent = selectedStudentData
		}
	}
}

