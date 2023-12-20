//
//  DatePickerView.swift
//  DavalebaSwiftUI6
//
//  Created by Lika Nozadze on 12/20/23.
//

import SwiftUI

struct DatePickerView: View {
    
    // MARK: - Properties
    @EnvironmentObject var viewModel: DailyJournalViewModel
    @Binding var selectedDate: Date
    
    // MARK: - Body
    var body: some View {
        DatePicker("Date", selection: $selectedDate,
                   displayedComponents: [.date]
        )
        .accentColor(Color.red)
        .datePickerStyle(
            DefaultDatePickerStyle()
        )
    }
}



//
//#Preview {
//    DatePickerView()
//}
