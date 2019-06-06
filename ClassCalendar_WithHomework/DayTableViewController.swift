//
//  DayTableViewController.swift
//  ClassCalendar_WithHomework
//
//  Created by Soft Dev Student on 6/5/19.
//  Copyright © 2019 Alice Zhong. All rights reserved.
//

import UIKit

class DayTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        // pass in day
        if let day = day {
            // first period
            firstPeriodClass.text = day.firstPeriod.name
            firstPeriodTeacher.text = day.firstPeriod.teacher
            firstPeriodRoom.text = day.firstPeriod.room
            
            // long block
            longBlockClass.text = day.longBlock.name
            longBlockTeacher.text = day.longBlock.teacher
            longBlockRoom.text = day.longBlock.room
            
            // before lunch
            beforeLunchClass.text = day.beforeLunch.name
            beforeLunchTeacher.text = day.beforeLunch.teacher
            beforeLunchRoom.text = day.beforeLunch.room
            
            // after lunch
            afterLunchClass.text = day.afterLunch.name
            afterLunchTeacher.text = day.afterLunch.teacher
            afterLunchRoom.text = day.afterLunch.room
            
            // x block
            xBlockClass.text = day.xBlock.name
            xBlockTeacher.text = day.xBlock.teacher
            xBlockRoom.text = day.xBlock.room
        }
        
    }

    // first period outlet
    @IBOutlet weak var firstPeriodClass: UILabel!
    @IBOutlet weak var firstPeriodTeacher: UILabel!
    @IBOutlet weak var firstPeriodRoom: UILabel!
    
    // long block outlet
    @IBOutlet weak var longBlockClass: UILabel!
    @IBOutlet weak var longBlockTeacher: UILabel!
    @IBOutlet weak var longBlockRoom: UILabel!
    
    // before lunch outlet
    @IBOutlet weak var beforeLunchClass: UILabel!
    @IBOutlet weak var beforeLunchTeacher: UILabel!
    @IBOutlet weak var beforeLunchRoom: UILabel!
    
    // after lunch outlet
    @IBOutlet weak var afterLunchClass: UILabel!
    @IBOutlet weak var afterLunchTeacher: UILabel!
    @IBOutlet weak var afterLunchRoom: UILabel!
    
    // x block outlet
    @IBOutlet weak var xBlockClass: UILabel!
    @IBOutlet weak var xBlockTeacher: UILabel!
    @IBOutlet weak var xBlockRoom: UILabel!
    
    // for day
    var day: Day?

    // MARK: - Table view data source

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
