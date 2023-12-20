//
//  TextFieldView.swift
//  DavalebaSwiftUI6
//
//  Created by Lika Nozadze on 12/20/23.
//

import SwiftUI

struct TextFieldView: View {
    
    // MARK: - Properties
    @EnvironmentObject var viewModel: DailyJournalViewModel
    @Binding var title: String
    
    // MARK: - Body
    var body: some View {
        
        Section {
            TextField("Enter title", text: $title)
                .textFieldStyle(.roundedBorder)
                .background(Color.gray.opacity(0.3).cornerRadius(10))
                .font(.headline)
        }
    }
}

//#Preview {
//    TextFieldView()
//}
