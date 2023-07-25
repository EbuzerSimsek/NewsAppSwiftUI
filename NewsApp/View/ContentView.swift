//
//  ContentView.swift
//  NewsApp
//
//  Created by Ebuzer Şimşek on 24.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var service = NewsService()
    
    
    var body: some View {
       
        NavigationView {
            
            List(service.news) { element in
                Text(element.title)
            }
          
            .navigationTitle("News")
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
