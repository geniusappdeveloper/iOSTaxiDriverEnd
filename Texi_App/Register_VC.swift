//
//  Register_VC.swift
//  Belize_Taxiapp
//
//  Created by SIERRA on 3/30/18.
//  Copyright © 2018 SIERRA. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField
import IQKeyboardManagerSwift
import MRCountryPicker

class Register_VC: UIViewController,UINavigationControllerDelegate,MRCountryPickerDelegate {
// outlets
    
    @IBOutlet weak var phoneNum_Picker_View: UIView!
    @IBOutlet weak var nextbutton: UIButton!
    @IBOutlet weak var country_picker: MRCountryPicker!
    @IBOutlet weak var number_lbl: UILabel!
    @IBOutlet weak var flagimage: UIImageView!
    @IBOutlet weak var first_name_textfield: SkyFloatingLabelTextField!
    @IBOutlet weak var contextfield: SkyFloatingLabelTextField!
    @IBOutlet weak var passwordtextField: SkyFloatingLabelTextField!
    @IBOutlet weak var phonetextfield: SkyFloatingLabelTextField!
    @IBOutlet weak var email_textfield: SkyFloatingLabelTextField!
    @IBOutlet weak var last_name_textfield: SkyFloatingLabelTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.nextbutton.layer.cornerRadius = 12
          self.navigationController?.navigationBar.barTintColor = UIColor.navColor
         self.navigationItem.title = "Register"
        self.navigationController?.isNavigationBarHidden = false
        self.phoneNum_Picker_View.isHidden = true
        self.country_picker.countryPickerDelegate = self
        self.country_picker.showPhoneNumbers = true
        UINavigationBar.appearance().tintColor = UIColor.white
    }
    func countryPhoneCodePicker(_ picker: MRCountryPicker, didSelectCountryWithName name: String, countryCode: String, phoneCode: String, flag: UIImage) {
        self.number_lbl.text = phoneCode
        self.flagimage.image = flag
    }
    func validations() {
//        self.passwordValidation()
//        if first_name_textfield.text == "" && last_name_textfield.text == "" && email_textfield.text == ""  && phonetextfield.text == ""  && passwordtextField.text == ""  && contextfield.text == ""  {
//            self.alert(title: "Alert", message: "Please enter all fields first")
//        }
//       else if last_name_textfield.text == "" {
//            self.alert(title: "Alert", message: "Please enter last name")
//        }
//       else if email_textfield.text == "" {
//            self.alert(title: "Alert", message: "Please enter email address")
//        }
//        else if phonetextfield.text == "" {
//            self.alert(title: "Alert", message: "Please enter phone number")
//        }
//        else if passwordtextField.text == "" {
//            self.alert(title: "Alert", message: "Please enter password")
//        }
//        else if contextfield.text == "" {
//            self.alert(title: "Alert", message: "Please enter confirm password")
//        }
//        else if isValidEmail(testStr: email_textfield.text!){
//            print("valide")
//        }else{
//            self.alert(title: "alert", message: "wrong email")
//        }
    }
    func passwordValidation() {
//        if self .passwordtextField.text!.characters.count < 6  {
//            self.alert(title: "Alert", message: "The password should be more then six characters")
//        }
//
    }
//    func isValidEmail(testStr:String) -> Bool {
////        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
////        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
////        return emailTest.evaluate(with: testStr)
//    }
    @IBAction func done_Action(_ sender: UIButton) {
        self.phoneNum_Picker_View.isHidden = true
        self.contextfield.isHidden = false
        self.nextbutton.isHidden = false
    }
    @IBAction func cancel_action(_ sender: UIButton) {
        self.phoneNum_Picker_View.isHidden = true
        self.contextfield.isHidden = false
        self.nextbutton.isHidden = false
    }
    @IBAction func flagBtn_Action(_ sender: UIButton) {
        self.phoneNum_Picker_View.isHidden = false
        self.contextfield.isHidden = true
        self.nextbutton.isHidden = true
    }
    @IBAction func next_btnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "AddVehicle_VC")as! AddVehicle_VC
        self.navigationController?.pushViewController(vc, animated: true)
        //self.validations()
        
    }
}
