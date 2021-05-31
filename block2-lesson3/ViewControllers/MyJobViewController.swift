//
//  MyJobViewController.swift
//  block2-lesson3
//
//  Created by Chupinsky Ivan on 31.05.2021.
//

import UIKit

class MyJobViewController: UIViewController {
    
    @IBOutlet weak var imageJob: UIImageView!
    @IBOutlet weak var titleJob: UILabel!
    @IBOutlet weak var textJob: UITextView!
    
    var user = InfoDescription.getDescription()
    
    override func viewDidLoad() {
        imageJob.image = UIImage(named: user[2].image)
        titleJob.text = user[2].title
        textJob.text = user[2].description
    }

}
