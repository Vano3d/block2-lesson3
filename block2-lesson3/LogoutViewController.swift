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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
            self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    
    @IBAction func tappedLogoutButton() {
         dismiss(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mainVC = segue.destination as? ViewController else {
            return
        }
        mainVC.userText = "4"
        mainVC.passText = "5"
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is LogoutViewController else {
            return
        }
        
    }
    
}