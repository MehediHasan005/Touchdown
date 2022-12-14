//
//  CodableBundelExtension.swift
//  Touchdown
//
//  Created by Mehedi Hasan on 27/11/22.
//

import Foundation

extension Bundle {
    func decode<T:Codable>(_ file:String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        guard let data = try? Data(contentsOf: url)else {
            fatalError("Failed to load \(file) form bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let decodeData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decoed \(file) from bundle")
        }
        return decodeData
        
    }
}
