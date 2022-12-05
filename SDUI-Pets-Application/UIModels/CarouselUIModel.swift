//
//  CarouselUIModel.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 04/12/2022.
//

import Foundation

struct CarouselRowUIModel: Decodable, Identifiable {
    let id = UUID()
    let petId: Int
    let imageUrl: URL
    
    private enum CodingKeys: String, CodingKey {
        case petId
        case imageUrl
    }
}

struct CarouselUIModel: Decodable {
    let items: [CarouselRowUIModel]
    let action: Action
}
