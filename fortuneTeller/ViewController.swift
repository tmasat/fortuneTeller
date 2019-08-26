//
//  ViewController.swift
//  fortuneTeller
//
//  Created by Çağrı Tuğberk MASAT on 26.08.2019.
//  Copyright © 2019 Çağrı Tuğberk MASAT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballSelector: Array = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    

    @IBOutlet weak var mainImageView: UIImageView!
    
    
    override func viewDidLoad() {
        
        shaker()
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func shaker() {
        
        var randomFinder = Int.random(in: 0 ... 4)
        mainImageView.image = UIImage(named: ballSelector[randomFinder])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        shaker()
    }


}

