//
//  ViewController.swift
//  Table Views
//
//  Created by Anudeep Reddy Dwaram on 29/05/15.
//  Copyright (c) 2015 iDev. All rights reserved.
//

import UIKit

// The delegate of a UITableView object must adopt the UITableViewDelegate protocol. Optional methods of the protocol allow the delegate to manage selections, configure section headings and footers, help to delete and reorder cells, and perform other actions.

class ViewController: UIViewController, UITableViewDelegate {

	var cellContent = ["Anudeep", "Reddy", "Dwaram"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	// ctrl + cmd + <- or -> to move back and forward
	// We can have a number of sections in the table say 'A', 'B'... for contacts
	// numberOfRowsInSection gives the rows in each section
	// By defaut the no of sections in Table is 1
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
		return cellContent.count // You now have three rows in the section
	}
	
	// defines the contents of each indivitual cell
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		
		// we use let if we don't want to change the datatype
		// The reuseIdentifier needs to match with the prototype used in ViewController of Main.storyboard
		let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
		
		// ? is used to indicate optinal value. It either contains value or nil
		// var str: String? = "Anu"
		// str = nil
		cell.textLabel?.text = cellContent[indexPath.row]
		
		return cell
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

