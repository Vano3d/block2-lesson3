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
    
    let userText = "User"
    let passText = "Pass"
    
    private let userConst = "Ivan"
    private let passConst = "Password"
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        userNameField.text = userText
        passwordField.text = passText
        addTapGestureToHideKeyboard()
        userNameField.delegate = self
        passwordField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.passwordField.becomeFirstResponder()
        return true
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
            Alert.showBasicAlert(on: self, with: "Invalid login or password", message: "Please correct")
        }
    }
    
    @IBAction func tappedForgotUserNameButton(_ sender: Any) {
        Alert.showBasicAlert(on: self, with: "Oops!", message: "Your User name is \(userConst)")

    }
    
    @IBAction func tappedForgotPasswordButton(_ sender: Any) {
        Alert.showBasicAlert(on: self, with: "Oops!", message: "Your Password is.. \(passConst)")
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

