//
//  onTrip_VC.swift
//  Texi_App
//
//  Created by SIERRA on 4/11/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit
import MapKit

class OnTrip_VC: UIViewController,UINavigationControllerDelegate {
//outlets
    
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var start_trip_out: UIButton!
    @IBOutlet weak var completeTrip_out: UIButton!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var startTrip: UIButton!
    // variables
    var isHidden: Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "On Trip"
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.startTrip.layer.cornerRadius = 12
        self.completeTrip_out.layer.cornerRadius = 12
        self.view2.isHidden = true
        self.completeTrip_out.isHidden = true
        self.view1.isHidden = false
        self.startTrip.isHidden = false
       self.view1.layer.cornerRadius = 12
        self.view2.layer.cornerRadius = 12
        self.view3.layer.cornerRadius = 12

    }

    @IBAction func Hide_show(_ sender: UIButton) {
        self.view2.isHidden = false
        self.completeTrip_out.isHidden = false
        self.view1.isHidden = true
        self.startTrip.isHidden = true
    
    }
  
    @IBAction func complete_trip_Action(_ sender: UIButton) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "CollectCash_VC") as!CollectCash_VC
        self.navigationController?.pushViewController(secondViewController, animated: true)
   
    }
    
    
    
}
