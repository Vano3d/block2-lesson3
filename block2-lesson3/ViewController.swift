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
    
    var userText = "Userr"
    var passText = "Passwordd"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameField.text = userText
        passwordField.text = passText
        
    }

    func loginChecked() -> Bool {
        userNameField.text == "User" && passwordField.text == "Password"
    }
    
    func logoutAppear() {
        let logoutVC = storyboard?.instantiateViewController(withIdentifier: "LogoutVC")
                self.present(logoutVC!, animated: true, completion: nil)
    }
    
    @IBAction func tappedLoginButton(_ sender: Any) {
        
        if loginChecked() {
            logoutAppear()
        } else {
            print("wrong!")
        }
        
    }
    
    @IBAction func tappedForgotUserNameButton(_ sender: Any) {
        print("Your User name is User :-)")
    }
    
    @IBAction func tappedForgotPasswordButton(_ sender: Any) {
        print("Your Passwoer is Password :-)")
    }
    
}

