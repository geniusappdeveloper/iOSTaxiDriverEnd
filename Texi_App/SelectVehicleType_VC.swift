//
//  selectVehicleType_vc.swift
//  Texi_App
//
//  Created by MAC on 06/04/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit

class SelectVehicleType_VC: UIViewController {

    @IBOutlet weak var Continue_btn: UIButton!
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view2: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]

        self.navigationItem.title = "Select Vehicle Type"
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.tintColor = UIColor.navColor
        view1.dropShadow(color: .lightGray, opacity: 0.1, offSet: CGSize(width: -1, height: 1), radius: 1, scale: true)
        view2.dropShadow(color: .lightGray, opacity: 0.1, offSet: CGSize(width: -1, height: 1), radius: 1, scale: true)
        view3.dropShadow(color: .lightGray, opacity: 0.1, offSet: CGSize(width: -1, height: 1), radius: 1, scale: true)
        self.Continue_btn.layer.cornerRadius = 12
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.view1.layer.cornerRadius = 12
        self.view2.layer.cornerRadius = 12
        self.view3.layer.cornerRadius = 12

        
    }

    @IBAction func ContinueBtn_ACtion(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "UploadDocuments_VC")as! UploadDocuments_VC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
