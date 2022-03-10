//
//  ListView.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 26.01.22.
//

import SwiftUI

struct ListView: View {
    @Binding var selection: Set<UUID>
    
    var body: some View {
        VStack {
            List(selection: $selection) {
                ForEach(Item.list) { index in
                    ListViewCell(cellDAta: index)
                }
                .onMove(perform: move)
            }
            .environment(\.editMode, Binding.constant(EditMode.active))
            .accentColor(.red)
            .listStyle(.plain)
        }
    }
    
    func move(from source: IndexSet, to destination: Int) {
        Item.list.move(fromOffsets: source, toOffset: destination)
    }
}

