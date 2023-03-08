//
//  UpdateNoteView.swift
//  Notes
//
//  Created by Jose Garcia on 3/7/23.
//

import SwiftUI

struct UpdateNoteView: View {
    var body: some View {
        HStack {
            TextField("Write a note...", text: $text)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                .clipped()
            
            Button(action: postNote) {
                Text("Add")
            }
            .padding(8)
        }
    }
}

struct UpdateNoteView_Previews: PreviewProvider {
    static var previews: some View {
        UpdateNoteView()
    }
}
