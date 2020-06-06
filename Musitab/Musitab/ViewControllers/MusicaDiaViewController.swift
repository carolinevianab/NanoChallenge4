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
    var buttonPressed = ""
    
    var music: Music!
    
    @IBOutlet weak var songTitle: UILabel!
    @IBOutlet weak var songSinger: UILabel!
    @IBOutlet weak var songLyrics: UILabel!
    
    var fetchedResults: NSFetchedResultsController<Music>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl2.text = "Essa é a música \(buttonPressed) do seu dia!"
        
        //configDB()
        loadSong()
        
        
        let musics = fetchedResults.fetchedObjects?[0]
        
        prepare(with: musics!)
        
        
    }
    
    func loadSong(){
        let fetchRequest: NSFetchRequest<Music> = Music.fetchRequest()
        let sortDescritor = NSSortDescriptor(key: "title", ascending: true) //Ordenar os dados (order by)
        fetchRequest.sortDescriptors = [sortDescritor] //passando pro request o descriptor
        
        fetchedResults = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context, sectionNameKeyPath: "category", cacheName: nil)
        fetchedResults.delegate = self
        
        do{
        try fetchedResults.performFetch()
        } catch{
            print(error.localizedDescription)
        }
        
    }
    
//    func configDB(){
//            music = Music(context: context)
//            music.lyrics = "batata"
//            music.title = "cenoura"
//            music.singer = "tomate"
//        do{
//        try context.save()
//        } catch {
//            print(error.localizedDescription)
//        }
//    }
    
    func prepare(with music: Music){
        songTitle.text = music.title ?? ""
        songSinger.text = music.singer ?? ""
        songLyrics.text = music.lyrics ?? ""
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


extension MusicaDiaViewController: NSFetchedResultsControllerDelegate{
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
        print("algo mudou :O")
    }
}
