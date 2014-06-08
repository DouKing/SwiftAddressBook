//
//  ContactPersonViewController.swift
//  SwiftAddressBook
//
//  Created by Paney on 14-6-8.
//  Copyright (c) 2014年 secoo. All rights reserved.
//

import UIKit

class ContactPersonViewController: UITableViewController {

    var contactPersons = [ContactPerson]() //不用导入头文件
    var i = 0
    var selectedIndex : Int? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
//点击添加按钮
    @IBAction func addContactPerson(sender : AnyObject) {
        var contactPerson = ContactPerson()
        contactPerson.name = "Lucy " + String(i++)
        contactPerson.sex = "gril"
        contactPerson.phoneNumber = "1234567890"
        contactPerson.address = "北京海淀"
        contactPerson.headPortraitImage = UIImage(named: "user_1.png")
        contactPerson.introllduce = "Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game."
        contactPersons.append(contactPerson)
        self.tableView.reloadData()
    }
    
    // #pragma mark - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return contactPersons.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("contactPerson", forIndexPath: indexPath) as! ContactPersonCell //确定返回一个类型的对象用as,不确定用as?
        var contactPerson = contactPersons[indexPath.row]
        cell.headPortraitImageView!.image = contactPerson.headPortraitImage
        cell.nameLabel!.text = contactPerson.name
        cell.phoneNumberLabel!.text = contactPerson.phoneNumber
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedIndex = indexPath.row
        self.performSegueWithIdentifier("showDetail", sender: self)  //会自动调用prepareForSegue
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView?, canEditRowAtIndexPath indexPath: NSIndexPath?) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView?, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath?) {
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
    override func tableView(tableView: UITableView?, moveRowAtIndexPath fromIndexPath: NSIndexPath?, toIndexPath: NSIndexPath?) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView?, canMoveRowAtIndexPath indexPath: NSIndexPath?) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        var contactPerson = contactPersons[selectedIndex!]
        var detailViewController: ContactPersonDetailViewController = segue!.destinationViewController as! ContactPersonDetailViewController
        detailViewController.detailContactPerson = contactPerson
    }


}
