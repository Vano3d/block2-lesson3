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
    
    var userText = "uuusserrr"
    var passText = "paroll"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameField.text = userText
        passwordField.text = passText
        
    }

    func loginChecked() -> Bool {
        userNameField.text == "User" && passwordField.text == "Password"
    }
    
    func logoutAppear() {
        let logoutVC = self.storyboard?.instantiateViewController(withIdentifier: "LogoutVC") as! LogoutViewController
                let navigationController = UINavigationController(rootViewController: logoutVC)
        self.present(navigationController, animated: true, completion: nil)
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

