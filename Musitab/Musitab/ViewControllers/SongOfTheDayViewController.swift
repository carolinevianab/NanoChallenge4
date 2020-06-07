//
//  TestViewController.swift
//  Musitab
//
//  Created by Caroline Viana on 28/05/20.
//  Copyright © 2020 Caroline Viana. All rights reserved.
//

import UIKit
import CoreData

class SongOfTheDayViewController: UIViewController {
    
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSinger: UILabel!
    @IBOutlet weak var lblLyrics: UILabel!
    
    
    var buttonPressed = ""
    
    var musics: [Music] = []
    var musicsManager = MusicManager.shared

    override func viewDidLoad() {
        super.viewDidLoad()

        lbl2.text = "Essa é a música \(buttonPressed) do seu dia!"
        displaySong()
    }
    
    func displaySong(){
        musicsManager.loadSongs(with: context)
        
        let cont = musicsManager.musics.count
        
        if(buttonPressed == "Random"){
            let number = Int.random(in: 0...cont - 1)
            lblTitle.text = musicsManager.musics[number].title
            lblSinger.text = musicsManager.musics[number].singer
            lblLyrics.text = musicsManager.musics[number].lyrics
            
            
        }
        else {
            var cont2 = 1
            while(cont2 < cont){
                if(musicsManager.musics[cont2].category == buttonPressed){
                    musics.append(musicsManager.musics[cont2])
                }
                cont2+=1
            }
            var numero = musics.count
            
            if(numero != 0){
                numero = numero - 1
            }
            
            let number = Int.random(in: 0...numero)
            
            lblTitle.text = musics[number].title
            lblSinger.text = musics[number].singer
            lblLyrics.text = musics[number].lyrics
            
            let vc = TodaysSongViewController()
            let wasChanged = vc.defalts.bool(forKey: "wasChanged")
            if(wasChanged == false){
                let copyThat = musics[number]
                vc.defalts.set(copyThat.title, forKey: "TodaysTitle")
                vc.defalts.set(copyThat.singer, forKey: "TodaysSinger")
                vc.defalts.set(copyThat.lyrics, forKey: "TodaysLyrics")
                vc.defalts.set(true, forKey: "wasChanged")
            }
        }
        
    }

}
