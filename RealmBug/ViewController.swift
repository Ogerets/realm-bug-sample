//
//  ViewController.swift
//  RealmBug
//
//  Created by Yevhen Pyvovarov on 18.04.2023.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let realm = try! Realm()

        let realmEntity = RealmEntity(isFavorite: true)

        try! realm.write {
            realm.add(realmEntity)
        }
        realm.refresh()

        let favoriteEntities = realm.objects(RealmEntity.self).where { $0.isFavorite }
        // Works when use explicit check
//        let favoriteEntities = realm.objects(RealmEntity.self).where { $0.isFavorite == true }

        print(favoriteEntities.count)
     }
}

