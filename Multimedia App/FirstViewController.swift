//
//  FirstViewController.swift
//  Multimedia App
//
//  Created by Zabeehullah Qayumi on 8/26/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.img.image = UIImage(named: "sss")
        for button in buttons{
            button.layer.cornerRadius = 15
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
       
    }

    @IBAction func pulseButtonTapped(_ sender: UIButton) {
        sender.pulsate()
    }
    
    @IBAction func flashButtonTapped(_ sender: UIButton) {
        sender.flash()
    }
    @IBAction func shakeButtonTapped(_ sender: UIButton) {
        sender.shake()
    }
}










