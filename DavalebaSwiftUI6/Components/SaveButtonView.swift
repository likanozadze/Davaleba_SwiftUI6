//
//  SaveButtonView.swift
//  DavalebaSwiftUI6
//
//  Created by Lika Nozadze on 12/20/23.
//

import SwiftUI

struct SaveButtonView: View {
    
    // MARK: - Properties
    @EnvironmentObject var viewModel: DailyJournalViewModel
    var action: () -> Void
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            action()
            
        }) {
            
            Text("Save News".uppercased())
                .font(.system(size: 17, weight: .semibold))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 40)
                .background(Color.black)
                .cornerRadius(10)
               
        }
    }
}

//#Preview {
//    SaveButtonView(textEditorText: .constant("Example text"), newsList: .constant(["Example news"]))
//   }
