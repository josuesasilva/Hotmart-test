//
//  MySalesViewController.swift
//  hotmart-test
//
//  Created by Josué on 30/06/17.
//  Copyright © 2017 Josué. All rights reserved.
//

import UIKit

class MySalesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: "MessageTableViewCell", bundle: nil), forCellReuseIdentifier: "messageCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "messageCell", for: indexPath) as! MessageTableViewCell
        
        if (indexPath.row == 0 || indexPath.row == 1) {
            cell.setAlert()
        }
        
        cell.setRow(row: indexPath.row)
        return cell
    }

}
