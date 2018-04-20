//
//  AddVehicle_VC.swift
//  
//
//  Created by SIERRA on 4/11/18.
//

import UIKit

class AddVehicle_VC: UIViewController {

    @IBOutlet weak var continue_btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Add Vehicle"
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.tintColor = UIColor.navColor
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.continue_btn.layer.cornerRadius = 12
        // Do any additional setup after loading the view.
    }
    @IBAction func continue_btn_Action(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "UploadDocuments_VC")as! UploadDocuments_VC
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
