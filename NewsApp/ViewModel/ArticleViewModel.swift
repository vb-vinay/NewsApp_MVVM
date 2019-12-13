//
//  ArticleViewModel.swift
//  NewsApp
//
//  Created by Vinay Bharwani on 10/12/19.
//  Copyright © 2019 Vinay Bharwani. All rights reserved.
//

import Foundation

class ArticleViewModel: Identifiable {
    
    let id = UUID()
    
    let article: Article
    
    init(article: Article) {
        self.article = article
    }
    
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description ?? ""
    }
    
    
}
