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
    
    var helloText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloUserText.text = "Welcome aboard, \(helloText ?? "")!"
        
        // Задаём градиент вьюхи
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.orange.cgColor, UIColor.yellow.cgColor]
//        gradientLayer.colors = [UIColor(hex: "#fc4a1a") ?? "green", UIColor(hex: "#f7b733") ?? "yellow"]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
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
