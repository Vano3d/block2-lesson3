//
//  AboutViewController.swift
//  block2-lesson3
//
//  Created by Chupinsky Ivan on 30.05.2021.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var imageAbout: UIImageView!
    
    @IBOutlet weak var titleAbout: UILabel!
    @IBOutlet weak var textAbout: UITextView!
    
    var user = InfoDescription.getDescription()
    
    override func viewDidLoad() {
        imageAbout.image = UIImage(named: user[0].image)
        titleAbout.text = user[0].title
        textAbout.text = user[0].description
    }
}
