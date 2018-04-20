//
//  VerifyMobile_VC.swift
//  Texi_App
//
//  Created by SIERRA on 4/11/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit

class VerifyMobile_VC: UIViewController {
    @IBOutlet weak var submit_Btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Verify Mobile"
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.tintColor = UIColor.navColor
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.submit_Btn.layer.cornerRadius = 12

        // Do any additional setup after loading the view.
    }

   
    @IBAction func submit_btn(_ sender: UIButton) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SelectVehicleType_VC") as! SelectVehicleType_VC
        self.navigationController?.pushViewController(secondViewController, animated: true)
        
    }
    
    

}
