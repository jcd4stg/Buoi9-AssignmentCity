//
//  ViewController.swift
//  Buoi9-AssignmentCity
//
//  Created by lynnguyen on 17/09/2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var detailedLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func cityBtn(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = sb.instantiateViewController(withIdentifier: "DETAIL") as! Detail_ViewController
        
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
}

