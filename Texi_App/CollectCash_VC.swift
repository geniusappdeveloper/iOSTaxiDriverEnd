//
//  CollectCash_VC.swift
//  Texi_App
//
//  Created by SIERRA on 4/11/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit

class CollectCash_VC: UIViewController,UINavigationControllerDelegate {

    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var cash_collected: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.cash_collected.layer.cornerRadius = 12
        self.view1.dropShadow(color: .lightGray, opacity: 0.1, offSet: CGSize(width: -1, height: 1),scale: true)
        self.view2.dropShadow(color: .lightGray, opacity: 0.1, offSet: CGSize(width: -1, height: 1),scale: true)
       
        self.navigationItem.title = "Collect Cash"
        self.navigationController?.isNavigationBarHidden = false
        //self.navigationController?.navigationBar.tintColor = UIColor.navColor
    }

  

    

}
