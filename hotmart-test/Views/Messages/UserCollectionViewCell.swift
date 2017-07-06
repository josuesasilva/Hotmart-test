//
//  UserCollectionViewCell.swift
//  hotmart-test
//
//  Created by Josué on 05/07/17.
//  Copyright © 2017 Josué. All rights reserved.
//

import UIKit
import AlamofireImage

class UserCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        image.image = image.image!.af_imageRoundedIntoCircle()
    }

}
