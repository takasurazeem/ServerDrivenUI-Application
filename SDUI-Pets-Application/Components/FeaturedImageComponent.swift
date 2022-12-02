//
//  FeaturedImageComponent.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 02/12/2022.
//

import SwiftUI

struct FeaturedImageComponent: UIComponent {
    
    let uiModel: FeaturedImageUIModel
    
    var id: String {
        ComponentType.featuredImage.rawValue
    }
    
    func render() -> AnyView {
        AsyncImage(url: uiModel.imageUrl) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            ProgressView()
        }
        .toAnyView()
    }
}
