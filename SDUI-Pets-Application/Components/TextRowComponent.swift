//
//  TextRowComponent.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 05/12/2022.
//

import SwiftUI

struct TextRowComponent: UIComponent {
    
    init(uiModel: TextRowUIModel) {
        self.uiModel = uiModel
    }
    
    func render() -> AnyView {
        Text(uiModel.text)
            .padding()
            .toAnyView()
    }
    
    let uiModel: TextRowUIModel
    let id = UUID()
}
