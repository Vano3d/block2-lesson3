//
//  MyLifeViewController.swift
//  block2-lesson3
//
//  Created by Chupinsky Ivan on 31.05.2021.
//

import UIKit

class MyLifeViewController: UIViewController {
    
    @IBOutlet weak var imageLife: UIImageView!
    @IBOutlet weak var titleLife: UILabel!
    @IBOutlet weak var textLife: UITextView!
    
    var user = InfoDescription.getDescription()
    
    override func viewDidLoad() {
        imageLife.image = UIImage(named: user[1].image)
        titleLife.text = user[1].title
        textLife.text = user[1].description
    }

}
