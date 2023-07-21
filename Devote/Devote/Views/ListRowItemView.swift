//
//  ListRowItemView.swift
//  Devote
//
//  Created by Aaron Wells on 7/21/23.
//

import SwiftUI

struct ListRowItemView: View {
    // MARK: - PROPERTIES

    @Environment(\.managedObjectContext) var viewContext
    @ObservedObject var item: Item

    // MARK: - BODY

    var body: some View {
        Toggle(isOn: $item.completion) {
            Text(item.task ?? "")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(item.completion ? Color.pink : Color.primary)
                .padding(.vertical, 12)
                .animation(.default, value: item.completion)
        } //: TOGGLE
        .toggleStyle(CheckboxStyle())
        .onReceive(item.objectWillChange) { _ in
            if self.viewContext.hasChanges {
                try? self.viewContext.save()
            }
        }
    }
}
