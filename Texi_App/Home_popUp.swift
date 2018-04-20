//
//  Home_popUp.swift
//  Texi_App
//
//  Created by SIERRA on 4/11/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit
import MapKit
protocol DissmissView {
    func DismmIssDone()
}
    
class Home_popUp: UIViewController {
    @IBOutlet weak var view_popUp: UIView!
    var delegate:DissmissView?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.view_popUp.layer.cornerRadius = 12
        self.view_popUp.dropShadow(color: .lightGray, opacity: 0.2 , offSet: CGSize(width: -1, height: 1),  scale: true)
        // Do any additional setup after loading the view.
    }

  
    
    @IBAction func accept_action(_ sender: UIButton) {
        dismiss(animated: false) {
            
            self.delegate?.DismmIssDone()
        }
        
    }
    
   
    @IBAction func reject_Action(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
