//
//  ScreenModel.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 02/12/2022.
//

import Foundation

enum ComponentError: Error {
    case decodingError
}

enum ComponentType: String, Decodable {
    case featuredImage
}

struct ComponentModel: Decodable {
    let type: ComponentType
    let data: [String: String]
}

struct ScreenModel: Decodable {
    let pageTitle: String
    let components: [ComponentModel]
}

extension ScreenModel {
    func buildComponents() throws -> [any UIComponent] {
        var components: [any UIComponent] = []
        
        for component in self.components {
            switch component.type {
            case .featuredImage:
                guard let uiModel: FeaturedImageUIModel = component.data.decode() else { throw ComponentError.decodingError }
                components.append(
                    FeaturedImageComponent(uiModel: uiModel)
                )
            }
        }
        
        return components
    }
}
