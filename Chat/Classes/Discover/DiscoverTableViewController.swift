//
//  DiscoverTableViewController.swift
//  Chat
//
//  Created by LiChendi on 16/3/23.
//  Copyright © 2016年 lcd. All rights reserved.
//

import UIKit



class DiscoverTableViewController: UITableViewController {

    
    let discoverCellIdentifier = "discoverCell"
    
    var jsonArray:Array<Array<String>> = [ [""] ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dic = NSDictionary(contentsOfFile: NSBundle.mainBundle().pathForResource("MenuJson", ofType: "plist")!)
        jsonArray = dic!["Discover"] as! Array<Array<String>>
        print(jsonArray)

        
        tableView.registerNib(UINib(nibName: "DetailTableViewCell", bundle: nil), forCellReuseIdentifier: discoverCellIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return jsonArray.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
//        let array = jsonArray[section] as Array<String>
        return 1
    }

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(discoverCellIdentifier, forIndexPath: indexPath) as! DetailTableViewCell
        cell.accessoryType = .DisclosureIndicator
        cell.IconImageView.image = UIImage(named: "ihead_007")
//        cell.nameLabel.text = jsonArray[indexPath.section][indexPath.row]
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
