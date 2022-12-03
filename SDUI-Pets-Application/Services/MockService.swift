//
//  MockService.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 03/12/2022.
//

import Foundation

class MockService: NetworkService {
    func load(resource: String) async throws -> ScreenModel {
        guard let path = Bundle.main.path(forResource: resource, ofType: "json") else {
            fatalError("Resource file \(resource) not found.")
        }
        let data = try Data(contentsOf: URL(fileURLWithPath: path))
        return try JSONDecoder().decode(ScreenModel.self, from: data)
    }
}
