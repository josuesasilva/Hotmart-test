//
//  NavigationBar.swift
//  hotmart-test
//
//  Created by Josué on 03/07/17.
//  Copyright © 2017 Josué. All rights reserved.
//

import UIKit

class NavigationBar: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func dashboardNavbar() {
        self.backgroundColor = Colors.dashboardNavbarBackground
    }
    
    func salesNavbar() {
        self.backgroundColor = Colors.salesNavbarBackground
    }
    
    func messagesNavbar() {
        self.backgroundColor = Colors.messagesNavbarBackground
    }

}
