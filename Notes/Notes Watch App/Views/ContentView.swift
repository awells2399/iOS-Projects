//
//  ContentView.swift
//  Notes Watch App
//
//  Created by Aaron Wells on 7/25/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES

    @State private var notes: [Note] = .init()
    @State private var text: String = ""

    // MARK: - FUNCTIONS

    func getDocumentDirectory() -> URL {
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return path[0]
    }

    func save() {
        // dump(notes)

        do {
            let data = try JSONEncoder().encode(notes)
            let url = getDocumentDirectory().appendingPathComponent("notes")
            try data.write(to: url)
        } catch {
            print("Saving data has failed!")
        }
    }

    func load() {
        DispatchQueue.main.async {
            do {
                let url = getDocumentDirectory().appendingPathComponent("notes")
                let data = try Data(contentsOf: url)
                notes = try JSONDecoder().decode([Note].self, from: data)
            } catch {
                // DO nothing
            }
        }
    }

    func delete(offsets: IndexSet) {
        withAnimation {
            notes.remove(atOffsets: offsets)
            save()
        }
    }

    // MARK: - BODY

    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .center, spacing: 6) {
                    TextField("Add New Note", text: $text)

                    Button {
                        // 1. Only run the buttons action when the text field is not empty
                        guard text.isEmpty == false else { return }

                        // 2. create a new note item and initialize it with the text value
                        let note = Note(id: UUID(), text: text)

                        // 3. Add the new note item to the notes array (append)
                        notes.append(note)

                        // 4. Make the text field empty
                        text = ""

                        // 5. Save the notes (function)
                        save()
                    } label: {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 42, weight: .semibold))
                    }
                    .fixedSize()
                    .buttonStyle(PlainButtonStyle())
                    .foregroundColor(.accentColor)
                } //: HSTACK

                Spacer()

                if notes.count >= 1 {
                    List {
                        ForEach(notes) { note in
                            HStack {
                                Capsule()
                                    .frame(width: 4)
                                    .foregroundColor(.accentColor)
                                Text(note.text)
                                    .lineLimit(1)
                                    .padding(.leading, 5)
                            } //: HSTACK
                        } //: LOOP
                        .onDelete(perform: delete)
                    }
                } else {
                    Spacer()
                    Image(systemName: "note.text")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.gray)
                        .opacity(0.25)
                        .padding(25)
                    Spacer()
                } //: LIST
            } //: VSTACK
            .navigationTitle("Notes")
            .onAppear {
                load()
            }
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
