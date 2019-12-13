//
//  NewsContentView.swift
//  NewsApp
//
//  Created by Vinay Bharwani on 10/12/19.
//  Copyright © 2019 Vinay Bharwani. All rights reserved.
//

import SwiftUI

struct NewsContentView: View {
    
    @ObservedObject var model = ArticleListViewModel()
    
    var body: some View {
        NavigationView{
            List(model.articles) { article in
                
                VStack(alignment: .leading) {
                    
                    Text(article.title)
                    Text(article.description)
                        .foregroundColor(.secondary)
                
                }
                
            }.navigationBarTitle(Constants.navTitle)
        }
    }
}

struct NewsContentView_Previews: PreviewProvider {
    static var previews: some View {
        NewsContentView()
    }
}
