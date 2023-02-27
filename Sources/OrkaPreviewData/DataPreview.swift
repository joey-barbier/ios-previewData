//
//  TodoDataPreview.swift
//  ios-storable-demo
//
//  Created by Joey BARBIER on 27/06/2022.
//

import Foundation

public protocol PreviewData: Decodable {
    static func previewData() throws -> [Self]
    static func previewData() throws -> Self
}

public extension PreviewData {
    static func previewData() throws -> [Self] {
        guard let path = Bundle.main.path(forResource: "\(Self.self)PreviewData", ofType: "json") else {
            throw PreviewDataError.fileNotFound
        }
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            guard let items = try? JSONDecoder().decode([Self].self, from: data) else {
                throw PreviewDataError.decodeFailed
            }
            return items
        } catch {
            return []
        }
    }
    
    static func previewData() throws -> Self {
        do {
            let items: [Self] = try previewData()
            guard let first = items.first else {
                throw PreviewDataError.noData
            }
            return first
        }
    }
}
