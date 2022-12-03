//
//  NetworkService.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 03/12/2022.
//

import Foundation

protocol NetworkService {
    func load(resource: String) async throws -> ScreenModel
}
