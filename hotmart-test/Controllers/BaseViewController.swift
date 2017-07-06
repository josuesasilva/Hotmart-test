//
//  BaseViewController.swift
//  hotmart-test
//
//  Created by Josué on 03/07/17.
//  Copyright © 2017 Josué. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, NavigationDelegate {
    
    @IBOutlet weak var navbar: NavigationBar!
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var navbarTitle: UILabel!
    
    var navigation: UINavigationController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goToDashboard()
    }
    
    @IBAction func onSelectDashboard(_ sender: UIButton) {
        goToDashboard()
    }
    
    @IBAction func onSelectSales(_ sender: UIButton) {
        goToSales()
    }
    
    @IBAction func onSelectMessages(_ sender: UIButton) {
        //goToMessages()
    }
    
    
    @IBAction func onTapMenuIcon(_ sender: UIButton) {
        self.openLeft()
    }
    
    func goToDashboard() {
        navbar.dashboardNavbar()
        navbarTitle.text = LocalizedString.foKey(key: "navbar.dashboard.title")
        setViewController(name: "dashboardController")
    }
    
    func goToSales() {
        navbar.salesNavbar()
        navbarTitle.text = LocalizedString.foKey(key: "navbar.sales.title")
        setViewController(name: "salesController")
    }
    
    func goToMessages() {
        navbar.messagesNavbar()
        navbarTitle.text = LocalizedString.foKey(key: "navbar.messages.title")
        setViewController(name: "messagesController")
    }
    
    func setViewController(name: String) {
        if let controller = self.storyboard?.instantiateViewController(
            withIdentifier: name) {
            navigation?.viewControllers = [controller]
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "embed") {
            let nav = segue.destination as! UINavigationController;
            navigation = nav
        }
    }

}
