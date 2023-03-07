//
//  ContentView.swift
//  Notes
//
//  Created by Jose Garcia on 3/6/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        NavigationView {
            List(0..<9) { i in
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("We are at \(i)")
                }
                .padding()
            }
            .navigationTitle("Notes")
            .navigationBarItems(trailing: Button(action: {
                print("Add a note")
            }, label: {
                Text("Add")
            }))
        }
    }
}

struct Note: Identifiable, Codable {
    var id: String { _id }
    var _id: String
    var note: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
