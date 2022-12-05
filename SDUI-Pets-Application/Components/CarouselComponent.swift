//
//  CarouselComponent.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 04/12/2022.
//

import SwiftUI

struct CarouselComponent: UIComponent {
    
    func render() -> AnyView {
        CarouselView(uiModel: uiModel)
            .toAnyView()
    }
    
    let uiModel: CarouselUIModel
    let id = UUID()
}
