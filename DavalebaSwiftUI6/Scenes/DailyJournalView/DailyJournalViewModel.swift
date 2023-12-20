//
//  DailyJournalAppViewModel.swift
//  DavalebaSwiftUI6
//
//  Created by Lika Nozadze on 12/20/23.
//

import SwiftUI

final class DailyJournalViewModel: ObservableObject {
    
    // MARK: - Properties
    
    @Published var textEditorText: String = ""
    @Published var title: String = ""
    @Published var newsList = NewsList()
    @Published var selectedDate: Date = Date()
    
    var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        return dateFormatter
    }()
    
    // MARK: - Methods
    
    func saveNews() {
        let newsItem = NewsItem(title: textEditorText, date: selectedDate)
        newsList.items.append(newsItem)
        textEditorText = ""
        title = ""
    }
    
    func delete(at index: IndexSet) {
        newsList.items.remove(atOffsets: index)
    }
    
    
    func move(indices: IndexSet, toOffset: Int) {
        newsList.items.move(fromOffsets: indices, toOffset: toOffset)
    }
    
    func addFavorite(_ newsItem: NewsItem) {
          if let index = newsList.items.firstIndex(where: { $0.id == newsItem.id }) {
              newsList.items[index].isFavorite.toggle()
          }
      }
}
        
        
        
        
