//
//  Model.swift
//  NewsApp
//
//  Created by Ebuzer Şimşek on 24.07.2023.
//

import Foundation

//// MARK: - Welcome
struct Welcome:Identifiable, Decodable {
    let id = UUID()
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
struct Article:Identifiable, Decodable {
    var id = UUID()
//    let source: Source
    let author: String?
    let title, description: String
    let url: String
    let urlToImage: String
    let publishedAt: Date
    let content: String?
}

//// MARK: - Source
//struct Source:Identifiable, Codable {
//    let id: String?
//    let name: String
//}

