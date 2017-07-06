//
//  MenuViewController.swift
//  hotmart-test
//
//  Created by Josué on 03/07/17.
//  Copyright © 2017 Josué. All rights reserved.
//

import UIKit
import Toucan
import AlamofireImage

class MenuViewController: UITableViewController {
    
    @IBOutlet weak var profilePhoto: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    var delegate: NavigationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // For a circle, ensure the image width and height are equal!
        profilePhoto.image = Toucan(image: profilePhoto.image!).maskWithEllipse().image
        let blurredImage = background.image!.af_imageFiltered(
            withCoreImageFilter:"CIGaussianBlur",
            parameters: ["inputRadius": 10]
        )
        background.image = blurredImage
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            delegate?.goToDashboard()
            break
        case 1:
            delegate?.goToSales()
            break
        case 4:
            delegate?.goToMessages()
        default:
            break
        }
        self.closeLeft()
    }

}
