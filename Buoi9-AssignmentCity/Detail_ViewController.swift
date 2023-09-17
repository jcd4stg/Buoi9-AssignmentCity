//
//  Detail_ViewController.swift
//  Buoi9-AssignmentCity
//
//  Created by lynnguyen on 17/09/2023.
//

import UIKit

class Detail_ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tbvDetail: UITableView!
    var arrDetail: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tbvDetail.delegate = self
        tbvDetail.dataSource = self
        
        arrDetail = ["Ha Noi", "HCM", "Hue"]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrDetail.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbvDetail.dequeueReusableCell(withIdentifier: "CELL") as! DETAIL_TableViewCell
        
        cell.detailCity.text = arrDetail[indexPath.row]
        
        return cell
         
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let manHinh1 = self.navigationController?.viewControllers[0] as! ViewController
        manHinh1.detailedLbl.text = arrDetail[indexPath.row]
        
        self.navigationController?.popViewController(animated: true)
        
        
    }
}
