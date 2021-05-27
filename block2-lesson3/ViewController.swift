//
//  ViewController.swift
//  block2-lesson3
//
//  Created by Chupinsky Ivan on 25.05.2021.
//

import UIKit
extension UIViewController {
    func addTapGestureToHideKeyboard() {
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
        view.addGestureRecognizer(tapGesture)
    }
}


class ViewController: UIViewController, UITextFieldDelegate {
    
    

    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    var userText = "User"
    var passText = "Pass"
    
    let userConst = "Ivan"
    let passConst = "Password"
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        userNameField.text = userText
        passwordField.text = passText
        addTapGestureToHideKeyboard()
        
    }

    func loginChecked() -> Bool {
        userNameField.text == userConst && passwordField.text == passConst
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
    
    @IBAction func tappedForgotUserNameButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "Oops!", message: "Your User name is \(userConst)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true)

    }
    
    @IBAction func tappedForgotPasswordButton(_ sender: Any) {
        print("Your Passwoer is Password :-)")
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
    
}

