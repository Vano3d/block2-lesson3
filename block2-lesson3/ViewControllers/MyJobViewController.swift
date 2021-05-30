//
//  MyJobViewController.swift
//  block2-lesson3
//
//  Created by Chupinsky Ivan on 31.05.2021.
//

import UIKit

class MyJobViewController: UIViewController {
    
    @IBOutlet weak var titleJob: UILabel!
    @IBOutlet weak var textJob: UITextView!
    
    override func viewDidLoad() {
        
        titleJob.text = descriptionArray[2].title
        textJob.text = descriptionArray[2].description
    }
}
