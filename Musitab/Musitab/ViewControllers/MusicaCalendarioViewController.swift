//
//  MusicaCalendarioViewController.swift
//  Musitab
//
//  Created by Caroline Viana on 28/05/20.
//  Copyright © 2020 Caroline Viana. All rights reserved.
//

import UIKit

class MusicaCalendarioViewController: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    var buttonPressed = "0"

    override func viewDidLoad() {
        super.viewDidLoad()

        let intSelected = Int(buttonPressed)!
        
        lbl.text = "Música do dia \(intSelected)"
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
