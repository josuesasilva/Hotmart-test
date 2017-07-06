//
//  UserCollectionViewCell.swift
//  hotmart-test
//
//  Created by Josué on 05/07/17.
//  Copyright © 2017 Josué. All rights reserved.
//

import UIKit
import Toucan

class UserCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // For a circle, ensure the image width and height are equal!
        image.image = Toucan(image: image.image!).maskWithEllipse().image
    }

}
