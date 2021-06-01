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
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        userNameField.text = ""
        passwordField.text = ""
        addTapGestureToHideKeyboard()
        userNameField.delegate = self
        passwordField.delegate = self
        
        loginButton.layer.cornerRadius = loginButton.frame.height / 2
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameField {
            passwordField.becomeFirstResponder()
        } else {
            if loginChecked() {
                showSecondScreen()
            } else {
                Alert.showBasicAlert(on: self, with: "Invalid login or password", message: "Please correct")
            }
            
        }
        return true
    }

    private func loginChecked() -> Bool {
        userNameField.text == UserData().userConst && passwordField.text == UserData().passConst
    }
    
    private func showSecondScreen() {
        performSegue(withIdentifier: "tabBarVC", sender: nil)
    }
    
    @IBAction func tappedLoginButton(_ sender: Any) {
        
        if loginChecked() {
            showSecondScreen()
        } else {
            Alert.showBasicAlert(on: self, with: "Invalid login or password", message: "Please correct")
        }
    }
    
    @IBAction func tappedForgotUserNameButton(_ sender: Any) {
        Alert.showBasicAlert(on: self, with: "Oops!", message: "Your User name is \(UserData().userConst)")

    }
    
    @IBAction func tappedForgotPasswordButton(_ sender: Any) {
        Alert.showBasicAlert(on: self, with: "Oops!", message: "Your Password is.. \(UserData().passConst)")
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let tabBarController = segue.destination as! UITabBarController
        
        for viewController in tabBarController.viewControllers ?? [] {
            if let logoutVC = viewController as? LogoutViewController {
                logoutVC.helloText = userNameField.text
            }
        }
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is LogoutViewController else { return }
        userNameField.text = ""
        passwordField.text = ""
    }
    
}

