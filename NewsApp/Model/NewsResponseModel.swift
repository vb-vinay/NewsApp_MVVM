//
//  NewsResponseModel.swift
//  NewsApp
//
//  Created by Vinay Bharwani on 10/12/19.
//  Copyright © 2019 Vinay Bharwani. All rights reserved.
//

import Foundation

struct NewsResponse: Codable {
    let articles: [Article]
}

struct Article: Codable {
    let title: String
    let description: String?
}
