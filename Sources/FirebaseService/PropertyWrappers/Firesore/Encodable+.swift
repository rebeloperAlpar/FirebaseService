//
//  Encodable+.swift
//  
//
//  Created by Alex Nagy on 30.11.2022.
//

import Foundation

public extension Encodable {
    var dictionary: [String: Any]? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
    }
}
