//
//  Home.swift
//  DeliveryApp
//
//  Created by Kin Der on 3.04.2023.
//

import SwiftUI



struct Home: View {
    
    @State var index = 0
 
    
    
    @State var opacity: Double = 0
    @State var defaultY: CGFloat = 0
    var body: some View {
       
        
            VStack{
                VStack{
                 
                    
                    
                        HStack{
                            Text   ("Москва")
                                .padding(.leading,10)
                                .foregroundColor(Color.black)
                                .bold()
                            
                            
                            Image(systemName: "chevron.down")
                            
                            Spacer()
                            
                        }
                    }
                    
                
                
               
                CategoryView()
                
                
                
                
                BottomCity()
                
            
            
        }}}
class Host : UIHostingController<ContentView>{
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        
        return .lightContent
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
