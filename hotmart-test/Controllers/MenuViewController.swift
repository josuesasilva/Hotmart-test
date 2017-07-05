//
//  MenuViewController.swift
//  hotmart-test
//
//  Created by Josué on 03/07/17.
//  Copyright © 2017 Josué. All rights reserved.
//

import UIKit

class MenuViewController: UITableViewController {
    
    var delegate: NavigationDelegate?
    
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
