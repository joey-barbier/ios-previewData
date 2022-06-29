//
//  TodoRow.swift
//  ios-storable-demo
//
//  Created by Joey BARBIER on 27/06/2022.
//

import SwiftUI

// MARK: - Append new type of view
extension Todo {
    struct Row: View {
        @Binding var todo: Todo
    }
}

// MARK: - Body
extension Todo.Row {
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(todo.title)")
                .font(.body)
            Text("\(todo.id)")
                .font(.subheadline)
        }
    }
}

struct TodoRow_Previews: PreviewProvider {
    static var previews: some View {
        let item: Todo = try! Todo.previewData()
        Todo.Row(todo: .constant(item))
    }
}
