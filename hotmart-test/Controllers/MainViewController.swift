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
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func awakeFromNib() {
        SlideMenuOptions.leftViewWidth = 320
        SlideMenuOptions.contentViewScale = 1.0
        
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "baseController") {
            let baseVC = controller as! BaseViewController
            self.mainViewController = baseVC
            
            if let controller = self.storyboard?.instantiateViewController(withIdentifier: "menuController") {
                let menuVC = controller as! MenuViewController
                menuVC.delegate = baseVC
                self.leftViewController = menuVC
            }
        }
        super.awakeFromNib()
    }

}
