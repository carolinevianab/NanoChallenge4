//
//  TestViewController.swift
//  Musitab
//
//  Created by Caroline Viana on 28/05/20.
//  Copyright © 2020 Caroline Viana. All rights reserved.
//

import UIKit

class MusicaDiaViewController: UIViewController {
    
    @IBOutlet weak var lbl2: UILabel!
    var buttonPressed = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        lbl2.text = "Essa é a música \(buttonPressed) do seu dia!"
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
