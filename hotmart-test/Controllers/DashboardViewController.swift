//
//  DashboardViewController.swift
//  hotmart-test
//
//  Created by Josué on 30/06/17.
//  Copyright © 2017 Josué. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {

    @IBOutlet weak var viewHorizontalScroll: UIView!
    @IBOutlet weak var viewTitle: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var messageCounter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        collectionView.delegate = self
        collectionView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: "MessageTableViewCell", bundle: nil), forCellReuseIdentifier: "messageCell")
        collectionView.register(UINib(nibName: "UserCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "userCell")
        viewTitle.backgroundColor = Colors.dashboardNavbarBackground
    }
    
}

extension DashboardViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "messageCell", for: indexPath) as! MessageTableViewCell
        cell.setRow(row: indexPath.row)
        return cell
    }
    
}

extension DashboardViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "userCell", for: indexPath) as! UserCollectionViewCell
        return cell
    }
    
}
