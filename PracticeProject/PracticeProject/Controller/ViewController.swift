//
//  ViewController.swift
//  PracticeProject
//
//  Created by Ravipati Lakshmi Sai Chandana on 03/02/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UpdateTheData{
    
    
 
    @IBOutlet weak var tableView: UITableView!
    
    var tableData: [Data1]?
    var peoplemanager = PeopleManaging()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        peoplemanager.delegate = self
        peoplemanager.fetchData()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(UINib(nibName: "DataCell", bundle: nil), forCellReuseIdentifier: "ReusableIdentifier")

    }
    
    func updateData(_ peopleManaging: PeopleManaging, datareq1: [Data1]) {

            tableData = datareq1
           // heightConstant.constant = CGFloat((datareq1.count)*(60))
            self.tableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count1 = tableData?.count {
            return count1
        }
        else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"ReusableIdentifier", for: indexPath) as! DataCell
        cell.Name.text = self.tableData?[indexPath.row].name
        cell.Email.text = self.tableData?[indexPath.row].email
        return cell
    }
    
}
