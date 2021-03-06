//
//  ContactPersonDetailViewController.swift
//  SwiftAddressBook
//
//  Created by Paney on 14-6-8.
//  Copyright (c) 2014年 secoo. All rights reserved.
//

import UIKit

class ContactPersonDetailViewController: UIViewController {
    
    var detailContactPerson : ContactPerson? = nil
    

    @IBOutlet var headPortraitImageView : UIImageView? = nil
    @IBOutlet var nameLabel : UILabel? = nil
    @IBOutlet var sexLabel : UILabel? = nil
    @IBOutlet var phoneNumberLabel : UILabel? = nil
    @IBOutlet var addressLabel : UILabel? = nil
    @IBOutlet var introllduceTextView : UITextView? = nil
    
    
//    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//        // Custom initialization
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameLabel!.text = detailContactPerson?.name  //可选链 如果没值返回可选变量
        sexLabel!.text = detailContactPerson?.sex
        phoneNumberLabel!.text = detailContactPerson?.phoneNumber
        addressLabel!.text = detailContactPerson?.address
        introllduceTextView!.text = detailContactPerson?.introllduce
        headPortraitImageView!.image = detailContactPerson?.headPortraitImage
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
