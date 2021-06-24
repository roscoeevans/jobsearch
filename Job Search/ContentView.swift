//
//  ContentView.swift
//  Job Search
//
//  Created by Rocky Evans on 6/22/21.
//

import SwiftUI

struct ContentView: View {
    @State var showingPopover = false
    @State var name: String = ""
    @State var address: String = ""
    @State var policy: String = ""
    @State var asignee: String = ""
    @State var types: String = ""
    @State var status: String = ""
    @State var date: String = ""
    @State var dateRangeEnabled: Bool = false
    @State private var previewIndex = 0

    @State private var wakeUp = Date()
    var lossTypes = ["Water", "Wind", "Hail", "Fire", "lightning", "Explosion", "Freezing"]
    
    @State var items: [String] = ["Apples", "Oranges", "Bananas", "Pears", "Mangos", "Grapefruit"]
        @State var selections: [String] = []

    
    var body: some View {
            
        Button("Show Menu") {
            showingPopover.toggle()
                }
        .popover(isPresented: $showingPopover) {
            NavigationView {
                AdvancedSearchView()
            }
        }
//            NavigationView {
//                        Form {
//                            Section() {
//                                TextField("Claim Number", text: $name)
//                                TextField("Street, City, or Zip", text: $address)
//                                TextField("Policy Number", text: $policy)
//                                Picker(selection: $previewIndex, label: Text("Type of Loss")) {
//                                    ForEach(0 ..< lossTypes.count) {
//                                        Text(self.lossTypes[$0])
//                                    }
//                                }
            
//
//                                if dateRangeEnabled {
//                                    DatePicker("Starting Date", selection: $wakeUp, displayedComponents: .date)
//                                    DatePicker("Ending Date", selection: $wakeUp, displayedComponents: .date)
//                                }
//                                else {
//                                    DatePicker("Completed Date", selection: $wakeUp, displayedComponents: .date)
//                                }
//                                Toggle(isOn: $dateRangeEnabled.animation()) {
//                                    Text("Select Date Range")
//                                }
//                            }
//                            Button(action: {
//                                showingPopover = false
//                            }) {
//                                Text("Search")
//                            }
//                        }
//                        .navigationBarTitle("Advanced Search")
//                        .navigationBarItems(leading: Button("Close") {
//                            showingPopover = false
//                        })
//                    }
            
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
