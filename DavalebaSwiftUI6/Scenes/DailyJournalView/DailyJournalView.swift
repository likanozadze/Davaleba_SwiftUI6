//
//  DailyJournalView.swift
//  DavalebaSwiftUI6
//
//  Created by Lika Nozadze on 12/20/23.
//

import SwiftUI

struct DailyJournalView: View {
    
    // MARK: - Properties
    @EnvironmentObject var viewModel: DailyJournalViewModel
    
    // MARK: - Body
    
    var body: some View {
        
        NavigationView {
            VStack {
                TextFieldView(title: $viewModel.title)
                MultilineTextField(textEditorText: $viewModel.textEditorText)
                DatePickerView(selectedDate: $viewModel.selectedDate)
                SaveButtonView {
                    viewModel.saveNews()
                }
                if viewModel.newsList.items.isEmpty {
                    Text("ვა აქ არაფერია")
                        .foregroundColor(.black)
                } else {
                    List {
                        Section("News") {
                            ForEach(viewModel.newsList.items) { newsItem in
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text(newsItem.title)
                                            .font(.headline)
                                        Text(viewModel.dateFormatter.string(from: newsItem.date))
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                    }
                                    .swipeActions {
                                        Button {
                                            viewModel.addFavorite(newsItem)
                                        } label: {
                                            Label("Favorite", systemImage: newsItem.isFavorite ? "star.fill" : "star")
                                        }
                                        .tint(.yellow)
                                    }
                                }
                            }
                            .onDelete(perform: viewModel.delete)
                            .onMove(perform: viewModel.move)
                            
                        }
                    }
                    .listStyle(.grouped)
                }
            }
            
            .padding()
            .navigationTitle("Daily Journal")
            .navigationBarItems(leading: EditButton())
            .background(Color.yellow)
        }
    }
}

struct DailyJournalApp_Previews: PreviewProvider {
    static var previews: some View {
        DailyJournalView()
        
            .environmentObject(DailyJournalViewModel())
    }
}
