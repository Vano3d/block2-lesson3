//
//  LogoutViewController.swift
//  block2-lesson3
//
//  Created by Chupinsky Ivan on 25.05.2021.
//

import UIKit

class LogoutViewController: UIViewController {
    
    @IBOutlet weak var logoutButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // print something?
    }
    
    
    @IBAction func tappedLogoutButton() {
         dismiss(animated: true)
    }
    
}
