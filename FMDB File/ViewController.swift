//
//  ViewController.swift
//  FMDB File
//
//  Created by R93 on 04/04/23.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var t1: UITextField!
    @IBOutlet weak var t2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        fmdb.createFile()
    }

    @IBAction func svaeButtonAction(_ sender: UIButton) {
        if let a = t1.text , let b = Int(a)
        {
            fmdb.addData(id: b, name: t2.text ?? "" )
        }
    }
    
    @IBAction func deleteDataButtonAction(_ sender: UIButton) {
        if let a = t1.text , let b = Int(a)
        {
            fmdb.deleteData (id: b, name: t2.text ?? "" )
        }
    }
    
    @IBAction func getDataButtonAction(_ sender: UIButton) {
        let navigation = storyboard?.instantiateViewController(withIdentifier:"ViewController2" ) as! ViewController2
        navigationController?.pushViewController(navigation, animated: true)
    }
    
}

