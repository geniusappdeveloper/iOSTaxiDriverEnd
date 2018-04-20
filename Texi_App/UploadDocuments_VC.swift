//
//  UploadDocuments_VC.swift
//  Texi_App
//
//  Created by SIERRA on 4/11/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit

class UploadDocuments_VC: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    var selectImage = Int()
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var get_started_btn: UIButton!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Upload Documents"
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.tintColor = UIColor.navColor
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white

        view1.dropShadow(color: .lightGray, opacity: 0.1, offSet: CGSize(width: -1, height: 1),scale: true)
        view2.dropShadow(color: .lightGray, opacity: 0.1, offSet: CGSize(width: -1, height: 1),scale: true)
        view3.dropShadow(color: .lightGray, opacity: 0.1, offSet: CGSize(width: -1, height: 1),scale: true)
        view4.dropShadow(color: .lightGray, opacity: 0.1, offSet: CGSize(width: -1, height: 1),scale: true)
        view1.layer.cornerRadius = 12
        view2.layer.cornerRadius = 12
        view3.layer.cornerRadius = 12
        view4.layer.cornerRadius = 12
         self.get_started_btn.layer.cornerRadius = 12
        self.img4.layer.cornerRadius = 12
     
    }

    @IBAction func vehicle_reg_Action(_ sender: UIButton) {
        
        selectImage = 4
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
            image.allowsEditing = false
            self.present(image, animated: true, completion: nil)
        })
        imagepickerSelector.addAction(library)
        let Cancel = UIAlertAction(title: "cancel", style: .default, handler: nil)
        imagepickerSelector.addAction(Cancel)
        self.present(imagepickerSelector, animated: true, completion: nil)
    }
    @IBAction func Vehicle(_ sender: UIButton) {
        selectImage = 3

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
    @IBAction func vehicle_action_btn(_ sender: UIButton) {
        selectImage = 2

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
    @IBAction func Driver_license_action(_ sender: UIButton) {
        selectImage = 1
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "UploadDrivingLic_VC") as! UploadDrivingLic_VC
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    @IBAction func GetStarted_btn(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Login_VC") as! Login_VC
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String:Any]) {
         let selectedPhoto = info[UIImagePickerControllerOriginalImage] as? UIImage
        if selectImage == 2 {
        self.img2.image = selectedPhoto
        }
         else if selectImage == 3 {
        self.img3.image = selectedPhoto
        }
        else if selectImage == 4 {
        self.img4.image = selectedPhoto
        }
        dismiss(animated: true, completion: {
            print("images")
        })
    }
}

