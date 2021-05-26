//
//  LogoutViewController.swift
//  block2-lesson3
//
//  Created by Chupinsky Ivan on 25.05.2021.
//

import UIKit

class LogoutViewController: UIViewController {
    
    @IBOutlet weak var logoutButton: UIButton!
    @IBOutlet weak var helloUserText: UILabel!
    
    var helloText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloUserText.text = helloText
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
    
    
    
}
