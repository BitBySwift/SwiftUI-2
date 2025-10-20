//
//  ContentView.swift
//  asyncImage
//
//  Created by abdul samad on 09/09/25.
//

import SwiftUI

struct ContentView: View {
    
    
    let url  = URL(string: "https://picsum.photos/400")
    
    
    var body: some View {
        
        AsyncImage(url: url, content: {
            returnedImage in
        }, placeholder: { ProgressView()
        })
        .frame(width: 100, height:100)
    }
    
   
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
