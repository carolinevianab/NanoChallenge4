//
//  ViewController.swift
//  Musitab
//
//  Created by Caroline Viana on 28/05/20.
//  Copyright © 2020 Caroline Viana. All rights reserved.
//

import UIKit

class DiaViewController: UIViewController {
    
    @IBOutlet weak var MPB: UIButton!
    @IBOutlet weak var Rock: UIButton!
    @IBOutlet weak var Blues: UIButton!
    @IBOutlet weak var Random: UIButton!
    
    
    var bntClicked = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MPB.addTarget(self, action: #selector(defineClick), for: .touchUpInside)
        Rock.addTarget(self, action: #selector(defineClick), for: .touchUpInside)
        Blues.addTarget(self, action: #selector(defineClick), for: .touchUpInside)
        Random.addTarget(self, action: #selector(defineClick), for: .touchUpInside)
        
    }
    
    @objc func defineClick(_ sender: UIButton){
        self.bntClicked = sender.restorationIdentifier!
        performSegue(withIdentifier: "SegueToMusic", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MusicaDiaViewController
        vc.buttonPressed = bntClicked
    }

   
    
}

