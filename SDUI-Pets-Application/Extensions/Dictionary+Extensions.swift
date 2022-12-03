//
//  Dictionary+Extensions.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 03/12/2022.
//

import Foundation

extension Dictionary {
    func decode<T: Decodable>() -> T? {
        guard let data = try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted) else {
            return nil
        }
        return try? JSONDecoder().decode(T.self, from: data)
    }
}
