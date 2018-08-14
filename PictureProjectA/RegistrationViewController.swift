//
//  RegistrationViewController.swift
//  PictureProjectA
//
//  Created by William Yeung on 12/08/18.
//  Copyright © 2018 William Yeung. All rights reserved.
//

import UIKit

//Error Message
func showMessage(_ msg : String, _ type : String, _ viewController : UIViewController)
{
    let alertController = UIAlertController( title: type, message: msg, preferredStyle: .alert)
    let alertAction = UIAlertAction(title: "Okay", style: .default)
    {
        action in
        viewController.dismiss(animated: true, completion: nil)
    }
    alertController.addAction(alertAction)
    viewController.present(alertController, animated: true, completion: nil)
}

class RegistrationViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var conpasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func registerButton(_ sender: UIButton) {
        let nm = nameTextField.text
        let un = usernameTextField.text
        let pw = passwordTextField.text
        let conpw = conpasswordTextField.text
        
        if ((nm?.isEmpty)! || (un?.isEmpty)! || (pw?.isEmpty)! || (conpw?.isEmpty)!)
        {
            showMessage("Please enter missing value first", "Error", self)
        }
            //If password is not matching
        else if (pw != conpw)
        {
            showMessage("Please re-enter correct Password", "Error", self)
        }
            //If successful
        else
        {
            UserDefaults.standard.set(nm, forKey: "name")
            UserDefaults.standard.set(un, forKey: "username")
            UserDefaults.standard.set(pw, forKey: "password")
            showMessage("Registered Successfully", "Success", self)
        }
    }
}
