//
//  Model.swift
//  DeliveryApp
//
//  Created by Kin Der on 3.04.2023.
//

import Foundation

struct BlockPizza: Identifiable{
    
    var id = UUID() . uuidString
    var name  : String
    var description : String
    var image: String
    var price: Int
    
}

var blocksCombo : [Block] = [
    Block(name: "Бургер + Колла", description:
            """
            Бургер, Колла, картошка, томатный соус
            """
          , image: "combo1", price: 245),
    
    Block(name: "Комбо Боксмастер", description:
            """
            Боксмастер, напиток,
            картошка,
            томатный соус
            """
,image: "combo2", price: 745),
    
    Block(name: "Комбо Семейное", description:
            """
            4 бургера, колла
            картошка, соус песто
            """
          , image: "combo3", price: 545),
    
    Block(name: "Комбо Куриное", description:
            """
            25 крыльев, 4 соуса,
            4 коллы, Сыр Камамберк
            """
          , image: "combo4", price: 545)
    
    
    
    
    
    
]
