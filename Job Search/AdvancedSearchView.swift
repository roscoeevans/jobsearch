//
//  AdvancedSearchView.swift
//  Job Search
//
//  Created by Rocky Evans on 6/22/21.
//

import SwiftUI

struct AdvancedSearchView: View {
    @State var showingPopover = false
    @State var name: String = ""
    @State var address: String = ""
    @State var policy: String = ""
    @State var asignee: String = ""
    @State var dateString: String = "Completed Date"
    @State var types: String = ""
    @State var status: String = ""
    
    @State var dateRangeEnabled: Bool = false
    @State private var previewIndex = 0
    @State private var startingDate = Date()
    @State private var endingDate = Date()
    @State private var date = Date()
    

    var lossTypes = ["Water", "Wind", "Hail", "Fire", "lightning", "Explosion", "Freezing"]
    
    func getDateString() -> String {
        if dateRangeEnabled {
            return "Ending Date"
        }
        return "Completed Date"
    }

    var body: some View {
        NavigationView {
                    Form {
                        Section() {
                            TextField("Claim Number", text: $name)
                            TextField("Street, City, or Zip", text: $address)
                            TextField("Policy Number", text: $policy)
                            Picker(selection: $previewIndex, label: Text("Type of Loss")) {
                                ForEach(0 ..< lossTypes.count) {
                                    Text(self.lossTypes[$0])
                                }
                            }
        
                            if dateRangeEnabled {
                                DatePicker("Starting Date", selection: $startingDate, in:...endingDate, displayedComponents: .date)
                                DatePicker("Ending Date", selection: $endingDate, in: startingDate...Date(), displayedComponents: .date)
                            }
                            else {
                                DatePicker(getDateString(), selection: $date, in:...Date(), displayedComponents: .date)
                            }
                            Toggle(isOn: $dateRangeEnabled.animation()) {
                                Text("Select Date Range")
                            }
                        }
                        Button(action: {
//                            showingPopover = false
                        }) {
                            Text("Search")
                        }
                    }
                    .navigationBarTitle("Advanced Search")
                    .navigationBarItems(leading: Button("Close") {
                        //close
                    })
                }
    }
}
struct AdvancedSearchView_Previews: PreviewProvider {
    static var previews: some View {
        AdvancedSearchView()
    }
}
