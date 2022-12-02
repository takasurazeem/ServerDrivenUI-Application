//
//  ScreenModel.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 02/12/2022.
//

import Foundation

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
