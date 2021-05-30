//
//  MyLifeViewController.swift
//  block2-lesson3
//
//  Created by Chupinsky Ivan on 31.05.2021.
//

import UIKit

class MyLifeViewController: UIViewController {
    
    @IBOutlet weak var titleLife: UILabel!
    @IBOutlet weak var textLife: UITextView!
    
    override func viewDidLoad() {
        
        titleLife.text = descriptionArray[1].title
        textLife.text = descriptionArray[1].description
    }
}
