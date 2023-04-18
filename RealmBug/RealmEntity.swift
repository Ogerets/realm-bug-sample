//
//  RealmEntity.swift
//  RealmBug
//
//  Created by Yevhen Pyvovarov on 18.04.2023.
//

import Foundation
import RealmSwift

class RealmEntity: Object {
    @Persisted var isFavorite: Bool = false

    convenience init(isFavorite: Bool) {
        self.init()
        
        self.isFavorite = isFavorite
    }
}
