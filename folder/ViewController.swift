//
//  ViewController.swift
//  folder
//
//  Created by Матвей Симонов on 27.06.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var b: UIButton!
    @IBOutlet weak var viewBottom: UIView!
    @IBOutlet weak var a: UIButton!
    @IBOutlet weak var viewTop: UIView!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   private let colors: [UIColor] = [
        .red,
        .blue,
        .purple,
        .orange,
        .black,
        .darkGray,
        .clear,
        .cyan,
        .link
    ]
    @IBAction func chengeRandomColor(_ sender: Any) {
        
        viewTop.backgroundColor = colors.randomElement()
        viewBottom.backgroundColor = colors.randomElement()
    }
   
    @IBAction func chengePhoto(_ sender: Any) {
        let photoNames = [
             "Image 1",
         "Image 2",
         "Image 3",
         "Image 4",
         "Image 5",
         "Image 6",
         "Image 7",
         "Image 8",
         "Image 9",
         "Image 0" ]
        if let imageName = photoNames.randomElement() {
            let image = UIImage(named: imageName)
            imageView.image = image
       }
       
    }
}

