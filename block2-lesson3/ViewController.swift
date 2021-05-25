//
//  ViewController.swift
//  block2-lesson3
//
//  Created by Chupinsky Ivan on 25.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //meybe something 
    }

    @IBAction func tappedLoginButton(_ sender: Any) {
    
    }
    
    @IBAction func tappedForgotUserNameButton(_ sender: Any) {
        print("Forgot User")
    }
    
    @IBAction func tappedForgotPasswordButton(_ sender: Any) {
        print("Forgot Pass")
    }
    
}

