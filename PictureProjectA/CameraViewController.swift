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

    @IBOutlet weak var pictureView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func pickImageButton(_ sender: UIButton) {
        let imageViewController = UIImagePickerController()
        imageViewController.sourceType = .camera
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
}
