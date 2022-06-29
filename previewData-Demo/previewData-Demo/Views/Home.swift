//
//  ContentView.swift
//  ios-storable-demo
//
//  Created by Joey BARBIER on 27/06/2022.
//

import SwiftUI

extension Views {
    struct Home: View {
        @State private var todos: Todos = []
    }
}

extension Views.Home {
    var body: some View {
        Todo.List(todos: $todos)
            .task {
                getData()
            }
    }
}

extension Views.Home {
    private func getData() {
        self.todos = try! Todo.previewData()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Views.Home()
    }
}
