//
//  MessageTableViewCell.swift
//  hotmart-test
//
//  Created by Josué on 04/07/17.
//  Copyright © 2017 Josué. All rights reserved.
//

import UIKit

class MessageTableViewCell: UITableViewCell {

    @IBOutlet weak var alertIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        alertIcon.isHidden = true
    }
    
    func setAlert() {
        alertIcon.isHidden = false
    }
    
    func setRow(row: Int) {
        if ((row % 2) == 0) {
            contentView.backgroundColor = UIColor(string: "#f4f4f4")
        } else {
            contentView.backgroundColor = .white
        }
    }

}
