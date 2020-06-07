//
//  TestViewController.swift
//  Musitab
//
//  Created by Caroline Viana on 28/05/20.
//  Copyright © 2020 Caroline Viana. All rights reserved.
//

import UIKit
import CoreData

class MusicaDiaViewController: UIViewController {
    
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSinger: UILabel!
    @IBOutlet weak var lblLyrics: UILabel!
    
    
    var buttonPressed = ""
    
    var musica: Music!
    var musics: [Music] = []
    var musicasManager = MusicManager.shared

    override func viewDidLoad() {
        super.viewDidLoad()

        lbl2.text = "Essa é a música \(buttonPressed) do seu dia!"
        exibirMusica()
    }
    
    func exibirMusica(){
        musicasManager.loadSongs(with: context)
        
        let cont = musicasManager.musics.count
        var daysCount = 0
        
        if(buttonPressed == "Random"){
            let number = Int.random(in: 0...cont - 1)
            lblTitle.text = musicasManager.musics[number].title
            lblSinger.text = musicasManager.musics[number].singer
            lblLyrics.text = musicasManager.musics[number].lyrics
            
            let vc = MusicaCalendarioViewController()
            vc.indexes[daysCount] = number
        }
        else {
            var cont2 = 1
            var cont3 = 1
            while(cont2 < cont){
                if(musicasManager.musics[cont2].category == buttonPressed){
                    musics.append(musicasManager.musics[cont2])
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
            
            
        }
        
        
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
