//
//  OnBoardingViewController.swift
//  Musitab
//
//  Created by Caroline Viana on 28/05/20.
//  Copyright © 2020 Caroline Viana. All rights reserved.
//

import UIKit

class OnBoardingViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    var cont = 0
    let Msg = ["Já se perguntou:\n\"O que eu vou tocar hoje?\"\nSe sim...\nVamos te ajudar com esse probleminha!", "Clique no seu estilo favorito, ou arrisque no aleatório!\nBora lá?", " "]
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
    }
    @IBAction func next(_ sender: Any) {
        
        if(cont < 2){
            message.text = Msg[cont]
        }
        else{
            cont = 0
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let mainVC = storyboard.instantiateViewController(withIdentifier: "mainVC") as! UITabBarController
            self.present(mainVC, animated: true, completion: nil)
        }
        cont += 1
    }
    
    func endOnBoarding(){
        
    }

}
