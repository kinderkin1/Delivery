    //
    //  PickerView.swift
    //  DeliveryApp
    //
    //  Created by Kin Der on 4.04.2023.
    //



    import SwiftUI

    struct CategoryView: View {
        @StateObject var modelDataSweet = HomeViewModelSweet()
    @StateObject var modelDataCombo = HomeViewModelCombo()
    @State var opacity: Double = 0
        @State var opacityC: Double = 0
        @State var defaultYC: CGFloat = 0
    @State var defaultY: CGFloat = 0
    @State  var columns = Array(repeating: GridItem(.flexible(), spacing: 1), count:  1)
    @StateObject var modelData = HomeViewModel()


    @State private var show: Bool = true
    @State public var index  =  0


    var body: some View {
    VStack{
    HStack(alignment: .center){

    if self.show{
    Image("banner")
    .resizable()
    .frame(width: 253, height: 110, alignment: .trailing)
    .cornerRadius(10)
    .padding(.leading,100)
    .background(Color(hue: 1.0, saturation: 0.025, brightness: 0.951))
    Image("banner")
    .resizable()
    .frame(width: 223, height: 110)
    .cornerRadius(10)
  


    }
          

    }

    ScrollView(.horizontal, showsIndicators: false){
    HStack{



    Button(action: {

    self.index = 0

    }) {

    VStack{

    Text("Пицца")
    .foregroundColor(Color.red)
    .font(.system(size: 15))
    .frame(width: 95,height: 35)
    .background(self.index == 0 ? Color(red: 0.961, green: 0.814, blue: 0.864) : Color(hue: 1.0, saturation: 0.025, brightness: 0.951))
    .cornerRadius(15)
    .overlay(
    RoundedRectangle(cornerRadius:15)
    .stroke(Color.red, lineWidth: 2))

    .fontWeight(self.index == 0 ? .bold : .none)
    .padding(.leading, 5)


    }
    }

    Button(action: {

    self.index = 1

    }) {

    VStack{

    Text("Комбо")
    .font(.system(size: 15))
    .foregroundColor(Color.red)
    .frame(width: 95,height: 35)
    .background(self.index == 1 ? Color(red: 0.961, green: 0.814, blue: 0.864) : Color(hue: 1.0, saturation: 0.025, brightness: 0.951))
    .cornerRadius(10)
    .overlay(
    RoundedRectangle(cornerRadius:15)
    .stroke(Color.red, lineWidth: 2))

    .fontWeight(self.index == 1 ? .bold : .none)


    }
    }

    Button(action: {

    self.index = 2

    }) {

    VStack{

    Text("Десерты")
    .font(.system(size: 15))
    .foregroundColor(Color.red)
    .frame(width: 95,height: 35)
    .background(self.index == 2 ? Color(red: 0.961, green: 0.814, blue: 0.864) : Color(hue: 1.0, saturation: 0.025, brightness: 0.951))
    .cornerRadius(10)
    .overlay(
    RoundedRectangle(cornerRadius:15)
    .stroke(Color.red, lineWidth: 2))



    .fontWeight(self.index == 2 ? .bold : .none)


    }
    }
    Button(action: {

    self.index = 3

    }) {

    VStack{

    Text("Напитки")
    .font(.system(size: 15))
    .foregroundColor(Color.red)
    .frame(width: 95,height: 35)
    .background(self.index == 3 ? Color(red: 0.961, green: 0.814, blue: 0.864) : Color(hue: 1.0, saturation: 0.025, brightness: 0.951))
    .cornerRadius(10)
    .overlay(
    RoundedRectangle(cornerRadius:15)
    .stroke(Color.red, lineWidth: 2))
    .padding(.trailing, 10)
    .fontWeight(self.index == 3 ? .bold : .none)


    }

    }
    }
    }
    .frame(width: 370.0, height: 20.0)
    .padding()

  


    ZStack{

    VStack{

    ScrollView(showsIndicators: false){


        GeometryReader{ geo in
            Rectangle()
                .frame(width: 0, height: 0)
                .onAppear(perform: {
                    self.defaultY = geo.frame(in: .global).midY
                })
                .onChange(of: geo.frame (in: .global).midY) { midY in
                    
                    if midY > 100 {
                        show = true
                    }
                    else {
                        show = false
                    }
                    
                }
        }

    LazyVGrid(columns: columns, spacing: 55) {
    ForEach(modelData.items, id: \.name) {
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
    }}
    }}}}}
        
        
        
        
    .opacity(self.index == 0 ? 1 : 0)
        
        
        
        
        ScrollView(showsIndicators: false){
            
            
            
            GeometryReader{ geoC in
            Rectangle()
            .frame(width: 0, height: 0)
            .onAppear(perform: {
            self.defaultYC = geoC.frame(in: .global).midY
            })
            .onChange(of: geoC.frame (in: .global).midY) { midY in

            if midY > 90 {
            show = true
            }
            else {
            show = false
            }

            }
            }
    
            
            LazyVGrid(columns: columns, spacing: 55) {
                ForEach(modelDataCombo.items, id: \.name) {
                    block in
                    CustomView{
                        VStack{
                            Image(block
                                .image)
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
}.opacity(self.index == 1
    ? 1 : 0)
        ScrollView(showsIndicators: false){
            
            
            GeometryReader{ geoS in
            Rectangle()
            .frame(width: 0, height: 0)
            .onAppear(perform: {
            self.defaultYC = geoS.frame(in: .global).midY
            })
            .onChange(of: geoS.frame (in: .global).midY) { mid in

            if mid > 110 {
            show = true
            }
            else {
            show = false
            }

            }
            }
            
            LazyVGrid(columns: columns, spacing: 55) {
                ForEach(modelDataSweet.items, id: \.name) {
                    block in
                    CustomView{
                        VStack{
                            Image(block
                                .image)
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
        }.opacity(self.index == 2
    ? 1 : 0)
    DrinksView().opacity(self.index == 3
    ? 1 : 0)
    }



    }


    }




    }





    struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
    CategoryView()
    }
    }
