////
////  BlockView.swift
////  DeliveryApp
////
////  Created by Kin Der on 3.04.2023.
////
//
//import SwiftUI
//
//struct BlockView: View {
// 
//
//    var body: some View {
//        ScrollView{
//            VStack{
//                HStack{
//                    
//                    Image(block[0].image)
//                        .resizable()
//                        
//                        .frame(width: 130,height: 130)
//                    VStack(spacing: 1){
//                    
//                        Text(block[0].name)
//                          
//                            .bold()
//                            .padding()
//                        Text(block[0].description)
//                            .font(.caption2)
//                            .fontWeight(.thin)
//                            .multilineTextAlignment(.leading)
//                        HStack{
//                            Spacer()
//                                .frame(width: 110.0, height: 0.0)
//                                
//                            Text("от 345 р")
//                                
//                                .multilineTextAlignment(.trailing)
//                                .frame(width: 75,height: 30)
//                                .foregroundColor(.red)
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 8)
//                                        .stroke(Color.red, lineWidth: 1)
//                                )
//                            
//                        }
//                            
//                    }
//                    
//                }
//            }
//        }
//    }
//}
//
//struct BlockView_Previews: PreviewProvider {
//    static var previews: some View {
//        BlockView()
//    }
//}
