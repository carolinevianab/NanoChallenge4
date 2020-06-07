//
//  CalendarioViewController.swift
//  Musitab
//
//  Created by Caroline Viana on 28/05/20.
//  Copyright © 2020 Caroline Viana. All rights reserved.
//

import UIKit

class TodaysSongViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSinger: UILabel!
    @IBOutlet weak var lblLyrics: UILabel!
    
    let defalts = UserDefaults.standard
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let title = defalts.object(forKey: "TodaysTitle") as? String ?? ""
        let singer = defalts.object(forKey: "TodaysTitle") as? String ?? ""
        let lyrics = defalts.object(forKey: "TodaysTitle") as? String ?? ""
        
        lblTitle.text = title
        lblSinger.text = singer
        lblLyrics.text = lyrics
    }
    


}
