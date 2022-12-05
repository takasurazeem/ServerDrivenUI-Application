//
//  FeaturedImageComponent.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 02/12/2022.
//

import SwiftUI

struct FeaturedImageComponent: UIComponent {
    
    func render() -> AnyView {
        CachedAsyncImage(url: uiModel.imageUrl) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            ProgressView()
        }
        .toAnyView()
    }
    
    let uiModel: FeaturedImageUIModel
    let id = UUID()
}
