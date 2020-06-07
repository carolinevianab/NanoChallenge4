//
//  MusicManager.swift
//  Musitab
//
//  Created by Caroline Viana on 06/06/20.
//  Copyright © 2020 Caroline Viana. All rights reserved.
//

import CoreData

class MusicManager {
    
    var musics: [Music] = []
    static let shared = MusicManager()
    
    func loadSongs(with context: NSManagedObjectContext){
        let fetchRequest: NSFetchRequest<Music> = Music.fetchRequest()
        let sortDescriptor = NSSortDescriptor(key: "category", ascending: true)
        
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        do{
             try musics = context.fetch(fetchRequest)
        } catch{
            print(error.localizedDescription)
        }
    }
    
    private init(){
        
    }
    
}
