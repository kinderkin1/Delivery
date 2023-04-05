//
//  BottomCity .swift
//  DeliveryApp
//
//  Created by Kin Der on 3.04.2023.
//

import SwiftUI

struct BottomCity: View {
    @State var index = 0
    var body: some View {
        HStack(spacing: 23.0){
            VStack(spacing: 3.0){
                Button(action: {
                    
                    self.index = 0
                    
                }) {
                    Image(systemName: "mug.fill")
                        .foregroundColor(self.index == 0 ? .red : .gray)
                        .font(.system(size: 25))
                }
                Text("Меню")
                    .foregroundColor(self.index == 0 ? .red : .gray)
                
            }
            VStack(spacing: 3.0){
                Button(action: {
                    
                    self.index = 1
                    
                }) {
                    Image(systemName: "globe.americas.fill")
                        .foregroundColor(self.index == 1 ? .red : .gray)
                        .font(.system(size: 25))
                }
                Text("Контакты")
                    .foregroundColor(self.index == 1 ? .red : .gray)
                
            }
            VStack(spacing: 3.0){
                Button(action: {
                    
                    self.index = 2
                    
                }) {
                    Image(systemName: "person.fill")
                        .foregroundColor(self.index == 2 ? .red : .gray)
                        .font(.system(size: 25))
                }
                Text("Профиль")
                    .foregroundColor(self.index == 2 ? .red : .gray)
                
            }
            VStack(spacing: 3.0){
                Button(action: {
                    
                    self.index = 3
                    
                }) {
                    Image(systemName: "cart.fill")
                        .font(.system(size: 25))
                        .foregroundColor(self.index == 3 ? .red : .gray)
                }
                Text("Корзина")
                
                    .foregroundColor(self.index == 3 ? .red : .gray)
                
            }
        }
      
    }
}

struct BottomCity_Previews: PreviewProvider {
    static var previews: some View {
        BottomCity()
    }
}
