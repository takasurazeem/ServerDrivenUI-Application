//
//  RatingRowComponent.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 05/12/2022.
//

import SwiftUI

struct RatingRowComponent: UIComponent {
    
    init(uiModel: RatingRowUIModel) {
        self.uiModel = uiModel
    }
    
    func render() -> AnyView {
        RatingView(rating: .constant(uiModel.rating))
            .toAnyView()
    }
    
    private let uiModel: RatingRowUIModel
    let id = UUID()
}
