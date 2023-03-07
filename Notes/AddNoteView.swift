//
//  AddNoteView.swift
//  Notes
//
//  Created by Jose Garcia on 3/7/23.
//

import SwiftUI

struct AddNoteView: View {
    
    @State var text = ""
    
    var body: some View {
        HStack {
            TextField("Write a note...", text: $text)
        }
    }
}

struct AddNoteView_Previews: PreviewProvider {
    static var previews: some View {
        AddNoteView()
    }
}
