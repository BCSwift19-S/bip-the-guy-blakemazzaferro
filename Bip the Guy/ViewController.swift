//
//  ViewController.swift
//  Bip the Guy
//
//  Created by Blake Mazzaferro on 2/3/19.
//  Copyright © 2019 Blake Mazzaferro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageToPunch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //FUNCTIONS
    func animateImage() {
        let bounds = self.imageToPunch.bounds
        let shrinkvalue: CGFloat = 60
        
        self.imageToPunch.bounds = CGRect(x: self.imageToPunch.bounds.origin.x + shrinkvalue, y: self.imageToPunch.bounds.origin.y + shrinkvalue, width: self.imageToPunch.bounds.width - shrinkvalue, height: self.imageToPunch.bounds.height - shrinkvalue)
        
        UIView.animate(withDuration: 0.25, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.imageToPunch.bounds = bounds }, completion: nil)
    }
    
    
    //ACTIONS
    @IBAction func libraryPressed(_ sender: UIButton) {
    }
    @IBAction func cameraPressed(_ sender: UIButton) {
    }
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        animateImage()
    }
    
}

