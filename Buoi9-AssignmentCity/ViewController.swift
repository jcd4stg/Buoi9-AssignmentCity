//
//  ViewController.swift
//  Buoi9-AssignmentCity
//
//  Created by lynnguyen on 17/09/2023.
//

import UIKit

class ViewController: UIViewController, DetailToVC_Delegate {

    
    @IBOutlet weak var detailedLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func solveText(txtContent: String) {
        detailedLbl.text = txtContent
    }
    
    @IBAction func cityBtn(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = sb.instantiateViewController(withIdentifier: "DETAIL") as! Detail_ViewController
        detailVC.delegate = self
        
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
}

