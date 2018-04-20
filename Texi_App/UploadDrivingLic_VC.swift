//
//  uploadDrivinglicencevc.swift
//  Texi_App
//
//  Created by MAC on 07/04/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField
import IQKeyboardManagerSwift
import DatePickerDialog

class UploadDrivingLic_VC: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate,UITextFieldDelegate{
    // variables
    var isSelected: Bool = true
    var date = Int()
   // outlets
    @IBOutlet weak var License_img_view: UIImageView!
    @IBOutlet weak var continue_btn: UIButton!
    @IBOutlet weak var expiry_txt: SkyFloatingLabelTextField!
    @IBOutlet weak var issued_on_txt: SkyFloatingLabelTextField!
    @IBOutlet weak var VEhicle_type_txt: SkyFloatingLabelTextField!
    @IBOutlet weak var License_text: SkyFloatingLabelTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.issued_on_txt.delegate = self
        self.expiry_txt.delegate = self
        let myInputView = UIView()
        issued_on_txt.inputView = myInputView
        expiry_txt.inputView = myInputView
        self.navigationController?.navigationBar.tintColor = UIColor.white
         self.continue_btn.layer.cornerRadius = 12
        self.navigationItem.title = "Uploading Driving License"
//
    }
    func datePickerTapped() {
        
        let datePicker = DatePickerDialog(textColor: .black,buttonColor: .gray,font: UIFont.boldSystemFont(ofSize: 17),showCancelButton: true)
        datePicker.show("Pick date",doneButtonTitle: "Done",cancelButtonTitle: "Cancel",datePickerMode: .date) { (date) in
            if let dt = date {
            let formatter = DateFormatter()
            formatter.dateFormat = "MM/dd/yyyy"
                if self.date == 0{
                    self.issued_on_txt.text = formatter.string(from: dt)
                                }
                                  else if self.date == 1 {
                                    self.expiry_txt.text = formatter.string(from: dt)
                                }
            }
        }
    }
    @IBAction func continue_btn_Action(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "UploadDocuments_VC") as! UploadDocuments_VC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func uploadImage(_ sender: UIButton) {
        let imagepickerSelector = UIAlertController(title: "Select Photo" , message: nil , preferredStyle: .actionSheet)
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            let camera = UIAlertAction(title: "Take Photo" , style: .default , handler:{(alertaction) in
                let image = UIImagePickerController()
                image.delegate = self
                image.sourceType = .camera
                self.present(image, animated: true, completion: nil)
            } )
            imagepickerSelector.addAction(camera)
        }
        let library = UIAlertAction(title:" upload from Library", style: .default , handler: {(alertaction) in
            let image = UIImagePickerController()
            image.delegate = self
            image.sourceType = .photoLibrary
            image.allowsEditing = true
            self.present(image, animated: true, completion: nil)
        })
        imagepickerSelector.addAction(library)
        let Cancel = UIAlertAction(title: "cancel", style: .default, handler: nil)
        imagepickerSelector.addAction(Cancel)
        self.present(imagepickerSelector, animated: true, completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String:Any]) {
        let selectedPhoto = info[UIImagePickerControllerOriginalImage] as? UIImage
            self.License_img_view.image = selectedPhoto
        dismiss(animated: true, completion: {
            print("images")
        })
    }

    @IBAction func issuesAction(_ sender: UIButton) {
        self.date = 0
        self.datePickerTapped()
    }
    @IBAction func expirtAction(_ sender: UIButton) {
        self.datePickerTapped()
        self.date = 1
    }
}


