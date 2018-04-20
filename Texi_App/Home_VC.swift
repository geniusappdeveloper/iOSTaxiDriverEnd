//
//  Home_VC.swift
//  Texi_App
//
//  Created by SIERRA on 4/11/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit
import MapKit

class Home_VC: UIViewController ,DissmissView{

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Home"
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.tintColor = UIColor.navColor
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white

    }
    override func viewWillAppear(_ animated: Bool) {
      
    }
    
    func DismmIssDone() {
        let vc  = OnTrip_VC.instantiate(fromAppStoryboard: .Main)
        
        self.navigationController?.pushViewController(vc,  animated: true)
    }
    @IBAction func history_Action(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "History_VC") as! History_VC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func rating_action(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Rating_Screen_VC") as! Rating_Screen_VC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func home_Action(_ sender: UIButton) {
        let vc = Home_popUp.instantiate(fromAppStoryboard: .PopUp)
        vc.delegate = self
        self.present(vc, animated: true, completion: nil)
    }
}
