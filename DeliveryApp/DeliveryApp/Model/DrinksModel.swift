//
//  Model.swift
//  DeliveryApp
//
//  Created by Kin Der on 3.04.2023.
//

import Foundation

struct BlockDrinks: Identifiable{
    
    var id = UUID() . uuidString
    var name  : String
    var description : String
    var image: String
    var price: Int
    
}

var blocksDrinks : [Block] = [
    Block(name: "Coca-Cola", description:
            """
            0.5L
            1L
            """
          , image: "drink1", price: 145),
    
    Block(name: "Pepsi", description:
            """
            0.5L
            1L
            """
,image: "drink2", price: 145),
    
    Block(name: "Чай горячий", description:
            """
            Стакан
            """
          , image: "drink3", price: 35),
    
    Block(name: "Кофе", description:
            """
            Капучино, Латте
            """
          , image: "drink4", price: 45)
    
    
    
    
    
    
]
