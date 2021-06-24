//
//  IngredientsPickerView.swift
//  Job Search
//
//  Created by Rocky Evans on 6/22/21.
//

import SwiftUI

struct IngredientsPickerView: View {
        @State var lossTypes: [Loss] = [Loss(name: "Water"),
                                        Loss(name: "Wind"),
                                        Loss(name: "Hail"),
                                        Loss(name: "Fire")]
        
        var body: some View{
                List{
                        ForEach(0..<lossTypes.count){ index in
                                HStack {
                                        Button(action: {
                                                lossTypes[index].isSelected = lossTypes[index].isSelected ? false : true
                                        }) {
                                                HStack{
                                                        if lossTypes[index].isSelected {
                                                                Image(systemName: "checkmark.circle.fill")
                                                                        .foregroundColor(.green)
                                                                        .animation(.easeIn)
                                                        } else {
                                                                Image(systemName: "circle")
                                                                        .foregroundColor(.primary)
                                                                        .animation(.easeOut)
                                                        }
                                                    Text(lossTypes[index].name).foregroundColor(Color.black)
                                                }
                                        }.buttonStyle(BorderlessButtonStyle())
                                }
                        }
                }
        }
    struct IngredientsPickerView_Previews: PreviewProvider {
        static var previews: some View {
            IngredientsPickerView()
        }
    }
}
struct Loss{
        var id = UUID()
        var name: String
        var isSelected: Bool = false
}
