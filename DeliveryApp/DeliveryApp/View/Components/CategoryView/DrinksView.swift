//
//  DrinksView.swift
//  DeliveryApp
//
//  Created by Kin Der on 4.04.2023.
//

import SwiftUI

struct DrinksView: View {
    @State  var columns = Array(repeating: GridItem(.flexible(), spacing: 1), count:  1)
    @StateObject var ModelData = HomeViewModelDrinks()
 var body: some View {
     ScrollView(showsIndicators: false){
         
         
 
         
         LazyVGrid(columns: columns, spacing: 55) {
             ForEach(ModelData.items, id: \.name) {
                 block in
                 CustomView{
                     VStack{
                         Image(block.image)
                             .resizable()
                             .frame(width: 130,height: 130)
                         Spacer()
                         
                     }
                 } detail: {
                     VStack(alignment: .leading, spacing: 15.0) {
                         Text(block.name)
                             .font(.system(size: 15))
                             .bold()
                         Text(block.description)
                             .font(.system(size: 10))
                             .fontWeight(.thin)
                         HStack{
                             Spacer()
                             Text("от " + String( block.price) + " р")
                                 .font(.system(size: 10))
                             
                                 .foregroundColor(Color.red)
                                 .multilineTextAlignment(.trailing)
                                 .frame(width: 65,height: 25)
                                 .overlay(
                                     RoundedRectangle(cornerRadius: 5)
                                         .stroke(Color.red, lineWidth: 1))
                                 .padding(.trailing, 10)
                         }
                         
                     }
                 }
                 
             }
            
             
         }
     }
 }
}

struct DrinksView_Previews: PreviewProvider {
    static var previews: some View {
        DrinksView()
    }
}
