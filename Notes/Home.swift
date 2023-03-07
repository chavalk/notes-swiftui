//
//  ContentView.swift
//  Notes
//
//  Created by Jose Garcia on 3/6/23.
//

import SwiftUI

struct Home: View {
    
    @State var notes = [Note]()
    
    @State var showAdd = false
    
    @State var showAlert = false
    @State var deleteItem: Note?
    
    var alert: Alert {
        Alert(title: Text("Delete"), message: Text("Are you sure you want to delete this note?"), primaryButton: .destructive(Text("Delete")), secondaryButton: .cancel())
    }
    
    var body: some View {
        
        NavigationView {
            List(self.notes) { note in
                VStack {
//                    Image(systemName: "globe")
//                        .imageScale(.large)
//                        .foregroundColor(.accentColor)
                    Text(note.note)
                }
                .padding()
                .onLongPressGesture {
                    self.showAlert.toggle()
                    deleteItem = note
                }
            }
            .sheet(isPresented: $showAdd, onDismiss: fetchNotes, content: {
                AddNoteView()
            })
            .onAppear(perform: {
                fetchNotes()
            })
            .navigationTitle("Notes")
            .navigationBarItems(trailing: Button(action: {
                self.showAdd.toggle()
            }, label: {
                Text("Add")
            }))
        }
    }
    
    func fetchNotes() {
        let url = URL(string: "http://localhost:3000/notes")!
        
        let task = URLSession.shared.dataTask(with: url) { data, res, err in
            guard let data = data else { return }
            
            do {
                let notes = try JSONDecoder().decode([Note].self, from: data)
                self.notes = notes
            }
            catch {
                print(error)
            }
        }
        
        task.resume()
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
