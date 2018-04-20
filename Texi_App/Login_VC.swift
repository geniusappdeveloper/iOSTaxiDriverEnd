//
//  Login_VC.swift
//  Belize_Taxiapp
//
//  Created by SIERRA on 3/30/18.
//  Copyright © 2018 SIERRA. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift
import MRCountryPicker
import SkyFloatingLabelTextField
class Login_VC: UIViewController,UINavigationControllerDelegate,MRCountryPickerDelegate{
    // outlets
    @IBOutlet weak var login_btnOut: UIButton!
    @IBOutlet weak var passwordTetfield: SkyFloatingLabelTextField!
    @IBOutlet weak var facebook_btn: UIButton!
    @IBOutlet weak var phoneNUmber_textfield: SkyFloatingLabelTextField!
    @IBOutlet weak var google_btn: UIButton!
    @IBOutlet weak var phone_lbl: UILabel!
    @IBOutlet weak var flaf_imageview: UIImageView!
    @IBOutlet weak var countryView: UIView!
    @IBOutlet weak var CountryPicker: MRCountryPicker!
    @IBOutlet weak var details_lbl: UILabel!
    // variables
    var dict : [String : AnyObject]!
     var error : NSError?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.login_btnOut.layer.cornerRadius = 12; self.navigationController?.navigationBar.barTintColor = UIColor.navColor
         self.details_lbl.textColor = UIColor.labelColor
        self.navigationController?.isNavigationBarHidden = false
       UINavigationBar.appearance().tintColor = UIColor.white
         self.CountryPicker.countryPickerDelegate = self
         self.CountryPicker.showPhoneNumbers = true
         self.countryView.isHidden = true
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white

       
        
       
    }
   
    @IBAction func forgot_password_btn(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPass_VC") as!ForgotPass_VC
         self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    func countryPhoneCodePicker(_ picker: MRCountryPicker, didSelectCountryWithName name: String, countryCode: String, phoneCode: String, flag: UIImage) {
        self.phone_lbl.text = phoneCode
       self.flaf_imageview.image = flag
    }
    @IBAction func cancelAction(_ sender: UIButton) {
        self.countryView.isHidden = true
        self.google_btn.isHidden = false
        self.facebook_btn.isHidden = false
    }
    @IBAction func doneAction(_ sender: UIButton) {
        self.countryView.isHidden = true
        self.google_btn.isHidden = false
        self.facebook_btn.isHidden = false
    }
    @IBAction func getPicker_view(_ sender: UIButton) {
        self.countryView.isHidden = false
        self.google_btn.isHidden = true
        self.facebook_btn.isHidden = true
    }
    @IBAction func facebook_btn_action(_ sender: UIButton) {
      
    }
    
// google signin
    @IBAction func google_Action(_ sender: UIButton) {
       
    }
    @IBAction func LoginAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Home_VC") as! Home_VC
        self.navigationController?.pushViewController(vc, animated: true)
        // self.validations()
    }
//   
}
