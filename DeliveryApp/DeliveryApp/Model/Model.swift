//
//  Model.swift
//  DeliveryApp
//
//  Created by Kin Der on 3.04.2023.
//

import Foundation

struct Block: Identifiable{
    
    var id = UUID() . uuidString
    var name  : String
    var description : String
    var image: String
    var price: Int
    
}

var blocks : [Block] = [
    Block(name: "Ветчина и грибы", description:
            """
            Ветчина, шампиньоны,
            увеличенная порция
            моцареллы, томатный соус
            """
          , image: "image1", price: 345),
    
    Block(name: "Боварские колбаски", description:
            """
            Боварские колбаски, ветчина,
            пикантная пепперони,
            острая чоризо,моцарелла,
            томатный соус
            """
,image: "image2", price: 345),
    
    Block(name: "Пицца нежный лосось", description:
            """
            Лосось,томаты черри,
            моцарелла, соус песто
            """
          , image: "image3", price: 345),
    
    Block(name: "Пицца четыре сыра", description:
            """
            Сыр Карбонара, Сыр Моцарелла,
            Сыр Пармезан, Сыр Камамберк
            """
          , image: "image4", price: 345)
    
    
    
    
    
    
]
