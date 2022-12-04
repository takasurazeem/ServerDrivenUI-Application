//
//  CarouselUIModel.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 04/12/2022.
//

import Foundation

struct CarouselUIModel: Decodable {
    let imageUrls: [URL]
    let action: Action
}
