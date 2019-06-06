//
//  CalendarTableViewController.swift
//  ClassCalendar_WithHomework
//
//  Created by Soft Dev Student on 5/31/19.
//  Copyright © 2019 Alice Zhong. All rights reserved.
//

import UIKit

class CalendarTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    // return number of section
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    // return number of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }

    // return cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // dequeue cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "DayCell", for: indexPath) as! CalendarTableViewCell
        // fetch model object to display
        let day = days[indexPath.row]
        // configure cell
        cell.update(with: day)
        // return cell
        return cell
    }
    
    // sample class
    static var englishC = Class(name: "English 11-04", room: "US-201", teacher: "Dr. Swift")
    static var mathC = Class(name: "Advanced Calculus I", room: "US-118", teacher: "Mrs. Hull")
    static var softwareC = Class(name: "Software Dev 2-S01", room: "Robotics Lab", teacher: "Ms. Swift")
    static var historyC = Class(name: "History 11-04", room: "US-208", teacher: "Ms. Marris-Macaulay")
    static var scienceC = Class(name: "Advanced Biology-01", room: "SW-235", teacher: "Ms. Ellsworth")
    static var latinC = Class(name: "Latin II", room: "US-318", teacher: "Mr. Bagg")
    static var freeC = Class(name: "free set", room: "N/A", teacher: "N/A")
    var classes: [Class] = [englishC, mathC, softwareC, historyC, scienceC, latinC, freeC]
    
    // sample days
    static var day1 = Day(name: "Day 1", firstPeriod: englishC, longBlock: mathC, beforeLunch: freeC, afterLunch: softwareC, xBlock: historyC)
    static var day2 = Day(name: "Day 2", firstPeriod: historyC, longBlock: softwareC, beforeLunch: scienceC, afterLunch: latinC, xBlock: freeC)
    static var day3 = Day(name: "Day 3", firstPeriod: freeC, longBlock: latinC, beforeLunch: mathC, afterLunch: englishC, xBlock: scienceC)
    static var day4 = Day(name: "Day 4", firstPeriod: scienceC, longBlock: englishC, beforeLunch: softwareC, afterLunch: historyC, xBlock: mathC)
    static var day5 = Day(name: "Day 5", firstPeriod: mathC, longBlock: historyC, beforeLunch: latinC, afterLunch: freeC, xBlock: softwareC)
    static var day6 = Day(name: "Day 6", firstPeriod: softwareC, longBlock: freeC, beforeLunch: englishC, afterLunch: scienceC, xBlock: latinC)
    static var day7 = Day(name: "Day 7", firstPeriod: latinC, longBlock: scienceC, beforeLunch: historyC, afterLunch: mathC, xBlock: englishC)
    var days: [Day] = [day1, day2, day3, day4, day5, day6, day7]
    
    // when a cell is tapped
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SeeClass" {
            let indexPath = tableView.indexPathForSelectedRow!
            let day = days[indexPath.row]
            let navController = segue.destination as! UINavigationController
            let dayTableViewController = navController.topViewController as! DayTableViewController
            
            dayTableViewController.day = day
        }
    }
    
    // unwind to calendar table view
    @IBAction func unwindToCalendarTableView(unwindSegue: UIStoryboardSegue) {
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
