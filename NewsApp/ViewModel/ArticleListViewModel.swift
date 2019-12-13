//
//  ArticleListViewModel.swift
//  NewsApp
//
//  Created by Vinay Bharwani on 10/12/19.
//  Copyright © 2019 Vinay Bharwani. All rights reserved.
//

import Foundation
/// The models will get the data from the WebService-------> Models then hand it over to the View Model (which is an Observable Object)-----> which further is responsible for displaying it on the screen (Screen containing the Observed object)
class ArticleListViewModel: ObservableObject {
    
    @Published var articles = [ArticleViewModel]()
    
    init() {
        fetchTopHeadlines()
    }
    
    private func fetchTopHeadlines() {
        
        guard let url = URL(string: Constants.BaseURL + Constants.country + Constants.params + Constants.API_Key) else {
            fatalError("URL is not correct!")
        }
        
        Webservice().loadTopHeadlines(url: url) { articles in
            if let articles = articles {
                self.articles = articles.map(ArticleViewModel.init)
            }
        }
        
    }
    
}
