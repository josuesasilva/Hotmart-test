//
//  MainViewController.swift
//  hotmart-test
//
//  Created by Josué on 03/07/17.
//  Copyright © 2017 Josué. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class MainViewController: SlideMenuController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func awakeFromNib() {
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "dashboardController") {
            self.mainViewController = controller
        }
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "menuController") {
            self.leftViewController = controller
        }
        super.awakeFromNib()
    }

}
