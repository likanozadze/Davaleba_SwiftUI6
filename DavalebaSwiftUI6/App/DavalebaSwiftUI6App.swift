//
//  DavalebaSwiftUI6App.swift
//  DavalebaSwiftUI6
//
//  Created by Lika Nozadze on 12/20/23.
//

import SwiftUI

@main
struct DavalebaSwiftUI6App: App {
    
    @StateObject var viewModel = DailyJournalViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                TabView {
                    DailyJournalView()
                        .tabItem {
                            Image(systemName: "newspaper.fill")
                            Text("News")
                        }
                    FavouritesView()
                        .tabItem {
                            Image(systemName: "star.fill")
                            Text("Favourites")
                        }
                }
                
                .environmentObject(viewModel)
            }
        }
    }
}
