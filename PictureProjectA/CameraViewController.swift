//
//  CameraViewController.swift
//  PictureProjectA
//
//  Created by William Yeung on 14/08/18.
//  Copyright © 2018 William Yeung. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var pictureView: UIImageView!
    @IBAction func browseButton(_ sender: UIButton) {
    }
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Messagebox
        messageLabel.isHidden = true
        
    }
    //Camera - William & Sean
    @IBAction func pickImageButton(_ sender: UIButton) {
        let imageViewController = UIImagePickerController()
        imageViewController.sourceType = .photoLibrary
        imageViewController.delegate = self
        imageViewController.allowsEditing = false
        
        present(imageViewController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        pictureView.image = image
        dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func saveButton(_ sender: UIButton) {
        let title = titleTextField.text!
        let desc = descTextField.text!
        let picture = pictureView.image!
        
        let photo = Photo(title,desc,picture)
        
        let data = NSKeyedArchiver.archivedData(withRootObject: photo)
        
        UserDefaults.standard.set(data, forKey: "photo")
        messageLabel.isHidden = false
        messageLabel.backgroundColor = UIColor.green
        titleTextField.text = ""
        descTextField.text = ""
        
    }
}
