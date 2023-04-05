//
//  HomeViewModel.swift
//  DeliveryApp
//
//  Created by Kin Der on 3.04.2023.
//

import Foundation


class HomeViewModel: ObservableObject {
    @Published var items = blocks 
}

class HomeViewModelCombo: ObservableObject {
    @Published var items = blocksCombo
}

class HomeViewModelSweet: ObservableObject {
    @Published var items = blocksSweet
}
class HomeViewModelDrinks: ObservableObject {
    @Published var items = blocksDrinks
}
