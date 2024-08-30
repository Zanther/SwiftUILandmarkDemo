//
//  ContentView.swift
//  Swift Landmark Test
//
//  Created by Steven Lattenhauer 2nd on 8/23/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        VStack {
            MapView()
                .frame(height:300)
            CircleImage()
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading) {
                    Text("Turtle Rock")
                        .font(.title)
                HStack {
                    Text("Joshua National Park")
                    Spacer()
                    Text("California")
                    }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here")
                }
            .padding()
            
            Spacer()
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
