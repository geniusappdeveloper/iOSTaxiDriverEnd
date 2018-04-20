//
//  ForgotpasswordViewController.swift
//  Texi_App
//
//  Created by MAC on 02/04/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit

class ForgotPass_VC: UIViewController {

    @IBOutlet weak var reset_password: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Forgot Password"
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.tintColor = UIColor.navColor
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        self.reset_password.layer.cornerRadius = 12
        self.navigationController?.navigationBar.tintColor = UIColor.white

        
    }

    
    @IBAction func reset_Btn_Action(_ sender: UIButton) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "VerifyMobile_VC") as! VerifyMobile_VC
        self.navigationController?.pushViewController(secondViewController, animated: true)
        
    }
    
}
