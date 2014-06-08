//
//  ContactPersonCell.swift
//  SwiftAddressBook
//
//  Created by Paney on 14-6-8.
//  Copyright (c) 2014年 secoo. All rights reserved.
//

import UIKit

class ContactPersonCell: UITableViewCell {

    @IBOutlet var headPortraitImageView : UIImageView? = nil
    @IBOutlet var nameLabel : UILabel? = nil
    @IBOutlet var phoneNumberLabel : UILabel? = nil

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
