//
//  CalendarioViewController.swift
//  Musitab
//
//  Created by Caroline Viana on 28/05/20.
//  Copyright © 2020 Caroline Viana. All rights reserved.
//

import UIKit

class CalendarioViewController: UIViewController {

    @IBOutlet weak var bnt1: UIButton!
    @IBOutlet weak var bnt2: UIButton!
    @IBOutlet weak var bnt3: UIButton!
    @IBOutlet weak var bnt4: UIButton!
    
    var bntClicked = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        bnt1.addTarget(self, action: #selector(defineClick), for: .touchUpInside)
        bnt2.addTarget(self, action: #selector(defineClick), for: .touchUpInside)
        bnt3.addTarget(self, action: #selector(defineClick), for: .touchUpInside)
        bnt4.addTarget(self, action: #selector(defineClick), for: .touchUpInside)
    }
    
    @objc func defineClick(_ sender: UIButton){
        self.bntClicked = sender.restorationIdentifier!
        performSegue(withIdentifier: "SegueToDay", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MusicaCalendarioViewController
        vc.buttonPressed = bntClicked
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
