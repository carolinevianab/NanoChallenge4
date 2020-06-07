//
//  ViewController+CoreData.swift
//  Musitab
//
//  Created by Caroline Viana on 06/06/20.
//  Copyright © 2020 Caroline Viana. All rights reserved.
//

import UIKit
import CoreData

extension UIViewController {
    
    var context: NSManagedObjectContext{
        
        let appDelegate  = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
}

