//
//  UpdateNoteView.swift
//  Notes
//
//  Created by Jose Garcia on 3/7/23.
//

import SwiftUI

struct UpdateNoteView: View {
    
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Update a note...", text: $text)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                .clipped()
            
            Button(action: updateNote) {
                Text("Update")
            }
            .padding(8)
        }
    }
    
    func updateNote() {
        print("UPDATE")
    }
}

//struct UpdateNoteView_Previews: PreviewProvider {
//    static var previews: some View {
//        UpdateNoteView(text: text)
//    }
//}
