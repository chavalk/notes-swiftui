//
//  AddNoteView.swift
//  Notes
//
//  Created by Jose Garcia on 3/7/23.
//

import SwiftUI

struct AddNoteView: View {
    var body: some View {
        HStack {
            TextField("Write a note...", text: <#T##Binding<String>#>)
        }
    }
}

struct AddNoteView_Previews: PreviewProvider {
    static var previews: some View {
        AddNoteView()
    }
}
