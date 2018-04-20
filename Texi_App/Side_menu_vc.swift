//
//  Side_menu_vc.swift
//  Texi_App
//
//  Created by SIERRA on 4/11/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit
import MMDrawerController

class Side_menu_vc: UIViewController {
    struct mytbl{
        var name: String
        var img: UIImage
    }
    var data = [mytbl]()
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
//       data = [mytbl(name: "Payment", img: <#T##UIImage#>),mytbl(name: "Ride History", img: <#T##UIImage#>),mytbl(name: "Scheduled Rides", img: <#T##UIImage#>), mytbl(name: "About", img: <#T##UIImage#>), mytbl(name: "Logout", img: <#T##UIImage#>)]
//
//    }
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return data.count
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
//        return cell
//    }

}
}
