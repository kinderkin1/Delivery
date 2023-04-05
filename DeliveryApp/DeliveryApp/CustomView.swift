//
//  CustomView.swift
//  DeliveryApp
//
//  Created by Kin Der on 3.04.2023.
//

import SwiftUI

struct CustomView<Content: View, Detail: View>: View {
    
    
    
    var content: Content
    var detail: Detail
    
    init(@ViewBuilder content: () -> Content, @ViewBuilder detail: () -> Detail) {
        
        self.content = content ()
        self.detail = detail ()
    }
        var body: some View {
            HStack(spacing: 15){
                
                content
                detail
                
            }
            .padding(.horizontal)
        }}

