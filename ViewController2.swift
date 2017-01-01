//
//  ViewController2.swift
//  FMDB File
//
//  Created by R93 on 01/01/23.
//

import UIKit

class ViewController2: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
   
    @IBOutlet weak var tableView: UITableView!
    var arr = fmdb.getData()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.idLabel.text = arr[indexPath.row].id.description
        cell.nameLabel.text = arr[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    

}
