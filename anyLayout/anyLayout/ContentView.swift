//
//  ContentView.swift
//  anyLayout
//
//  Created by abdul samad on 17/09/25.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    var body: some View {
        VStack(spacing: 12) {
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical:  \(verticalSizeClass.debugDescription)")
            
            if horizontalSizeClass == .compact {
                VStack {
                    Text("Alpha")
                    Text("Beta")
                    Text("Gamma")
                }
                
            } else {
            
                    HStack{
                        Text("Alpha")
                        Text("Beta")
                        Text("Gaama")
                    }
                }
            }
           
            
            }
        }
    


#Preview {
    ContentView()
}
