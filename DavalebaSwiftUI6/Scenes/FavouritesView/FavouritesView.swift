//
//  FavouritesView.swift
//  DavalebaSwiftUI6
//
//  Created by Lika Nozadze on 12/20/23.
//

import SwiftUI

struct FavouritesView: View {
    
    // MARK: - Properties
    @EnvironmentObject var viewModel: DailyJournalViewModel
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.newsList.items.filter { $0.isFavorite }) { favoriteNewsItem in
                    Text(favoriteNewsItem.title)
                }
            }
            .navigationBarTitle("Favorites")
            .navigationBarTitleDisplayMode(.inline)
            .backgroundStyle(.yellow)
        }
    }
}
