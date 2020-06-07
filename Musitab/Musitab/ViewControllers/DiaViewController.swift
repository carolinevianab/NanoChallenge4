//
//  ViewController.swift
//  Musitab
//
//  Created by Caroline Viana on 28/05/20.
//  Copyright © 2020 Caroline Viana. All rights reserved.
//

import UIKit
import CoreData

class DiaViewController: UIViewController {
    
    @IBOutlet weak var MPB: UIButton!
    @IBOutlet weak var Rock: UIButton!
    @IBOutlet weak var Blues: UIButton!
    @IBOutlet weak var Random: UIButton!
    
    
    var bntClicked = ""
    var music: Music!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MPB.addTarget(self, action: #selector(defineClick), for: .touchUpInside)
        Rock.addTarget(self, action: #selector(defineClick), for: .touchUpInside)
        Blues.addTarget(self, action: #selector(defineClick), for: .touchUpInside)
        Random.addTarget(self, action: #selector(defineClick), for: .touchUpInside)
        
        configDB()
        
    }
    
    @objc func defineClick(_ sender: UIButton){
        self.bntClicked = sender.restorationIdentifier!
        performSegue(withIdentifier: "SegueToMusic", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MusicaDiaViewController
        vc.buttonPressed = bntClicked
    }
    
    func configDB(){
        music = Music(context: context)
        music.title = "Rock1"
        music.singer = "Rock1"
        music.lyrics = "Rock1"
        music.category = "Rock"
        
        music = Music(context: context)
        music.title = "Rock2"
        music.singer = "Rock2"
        music.lyrics = "Rock2"
        music.category = "Rock"
        
        music = Music(context: context)
        music.title = "Blues1"
        music.singer = "Blues1"
        music.lyrics = "Blues1"
        music.category = "Blues"
        
        music = Music(context: context)
        music.title = "Blues2"
        music.singer = "Blues2"
        music.lyrics = "Blues2"
        music.category = "Blues"
        
        music = Music(context: context)
        music.title = "MPB1"
        music.singer = "MPB1"
        music.lyrics = "MPB1"
        music.category = "MPB"
        
        do{
            try context.save()
            } catch {
                print(error.localizedDescription)
        }
    }

   
    
}

