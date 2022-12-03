//
//  Utils.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 02/12/2022.
//

import Foundation

enum Constants {
    enum ScreenResources {
        private static let baseUrl = "localhost"
        static let petListing = "pet-listing"
        
        static func resource(for resourceName: String) -> URL? {
            var components = URLComponents()
            components.scheme = "http"
            components.percentEncodedHost = baseUrl
            components.port = 3000
            components.path = "/\(resourceName)"
            return components.url
        }
    }
}
