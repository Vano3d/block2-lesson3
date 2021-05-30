//
//  AboutViewController.swift
//  block2-lesson3
//
//  Created by Chupinsky Ivan on 30.05.2021.
//


import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var titleAbout: UILabel!
    @IBOutlet weak var textAbout: UITextView!
    
    override func viewDidLoad() {
        
        titleAbout.text = descriptionArray[0].title
        textAbout.text = descriptionArray[0].description
    }
}
