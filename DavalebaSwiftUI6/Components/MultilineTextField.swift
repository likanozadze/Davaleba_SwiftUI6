//
//  MultilineTextField.swift
//  DavalebaSwiftUI6
//
//  Created by Lika Nozadze on 12/20/23.
//

import SwiftUI

struct MultilineTextField: View {
    
    // MARK: - Properties
    @EnvironmentObject var viewModel: DailyJournalViewModel
    @Binding var textEditorText: String
    
    // MARK: - Body
    
    var body: some View {
        
        VStack {
            TextEditor(text: $textEditorText)
                .frame(height: 200)
                .cornerRadius(10)
                .scrollContentBackground(.hidden)
                .background(.white)
        }
    }
}


//
//#Preview {
//    MultilineTextField()
//}
