//
//  Model.swift
//  DeliveryApp
//
//  Created by Kin Der on 3.04.2023.
//

import Foundation

struct BlockSweet: Identifiable{
    
    var id = UUID() . uuidString
    var name  : String
    var description : String
    var image: String
    var price: Int
    
}

var blocksSweet : [Block] = [
    Block(name: "Торт", description:
            """
            Торт с глазурью
            """
          , image: "sweet1", price: 245),
    
    Block(name: "Кулич", description:
            """
            Кулич пасхальный
            """
,image: "sweet2", price: 745),
    
    Block(name: "Печенье", description:
            """
            Печенье с корицей
            """
          , image: "sweet3", price: 545),
    
    Block(name: "Торт медовый", description:
            """
            Торт медовый
            """
          , image: "sweet4", price: 545)
    
    
    
    
    
    
]
