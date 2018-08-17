//
//  ViewController.swift
//  PictureProjectA
//
//  Created by William Yeung on 12/08/18.
//  Copyright © 2018 William Yeung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        //setupNavigationBarItems()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //private func setupNavigationBarItems(){
    //let nav = self.navigationController?.navigationBar
    //   nav?.barStyle = UIBarStyle.black
    //    nav?.tintColor = UIColor.yellow
    //}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//Login - William
    @IBAction func loginButton(_ sender: UIButton) {
        let un = usernameTextField.text
        let pw = passwordTextField.text
        
        if((un!.isEmpty) || (pw!.isEmpty))
        {
            showMessage("Please enter missing value", "Error", self)
        }
        else
        {
            let username = UserDefaults.standard.string(forKey: "username")
            let password = UserDefaults.standard.string(forKey: "password")
            if(un == username && pw == password)
            {
                //showMessage("Welcome", "", self)
            }
            else
            {
                showMessage("Please enter correct login details", "Error", self)
            }
        }
        
    }
    
    
}

