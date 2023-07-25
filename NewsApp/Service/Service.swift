//
//  Service.swift
//  NewsApp
//
//  Created by Ebuzer Şimşek on 24.07.2023.
//

import Foundation
import Alamofire

class NewsService: ObservableObject {
    @Published var news = [Article]()
    
    init(){
        getNews()
    }
    
    func getNews() {
        
     
        AF.request("https://newsapi.org/v2/everything?q=bitcoin&apiKey=d0f416d686d848d493393e22075f0b65",method: .get).responseDecodable(of:Welcome.self) { response in
            switch response.result{
            case .success(let data):
                self.news = data.articles
                
            case .failure(let error):
                print(error)
            }
            
        }
        
        
        
        
        
    }
        
        
        
        
    }
    
