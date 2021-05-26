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
    
    var userText = "User"
    var passText = "Pass"
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        userNameField.text = userText
        passwordField.text = passText
    }

    func loginChecked() -> Bool {
        userNameField.text == "Ivan" && passwordField.text == "Password"
    }
    
    func showSecondScreen() {
        performSegue(withIdentifier: "LogoutVC", sender: nil)
    }
    
    @IBAction func tappedLoginButton(_ sender: Any) {
        
        if loginChecked() {
            showSecondScreen()
        } else {
            print("wrong!")
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

            guard let secondVC = segue.destination as? LogoutViewController else { return }
        secondVC.helloText = userNameField.text
        }
        
    
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is LogoutViewController else { return }
        userNameField.text = ""
        passwordField.text = ""
    }
    
    
    @IBAction func tappedForgotUserNameButton(_ sender: Any) {
        print("Your User name is User :-)")
    }
    
    @IBAction func tappedForgotPasswordButton(_ sender: Any) {
        print("Your Passwoer is Password :-)")
    }
    
}

