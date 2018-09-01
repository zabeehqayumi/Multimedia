//
//  ThirdViewController.swift
//  Multimedia App
//
//  Created by Zabeehullah Qayumi on 8/28/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
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
    

 
}
