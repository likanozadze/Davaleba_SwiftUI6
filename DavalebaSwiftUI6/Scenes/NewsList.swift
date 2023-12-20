//
//  NewsList.swift
//  DavalebaSwiftUI6
//
//  Created by Lika Nozadze on 12/20/23.
//

import Foundation

struct NewsItem: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var isFavorite: Bool = false
    var date: Date 
}

class NewsList: ObservableObject {
    @Published var items: [NewsItem] = []
}
