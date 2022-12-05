//
//  ListComponent.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 05/12/2022.
//

import SwiftUI

struct ListComponent: UIComponent {
    
    init(uiModel: ListUIModel) {
        self.uiModel = uiModel
    }
    
    func render() -> AnyView {
        ForEach(uiModel.rows, id: \.id) { row in
            Navigator.perform(action: uiModel.action, payload: row) {
                RowComponent(uiModel: row)
                    .render()
                    .toAnyView()
            }
        }
        .toAnyView()
    }
    
    private let uiModel: ListUIModel
    let id = UUID()
}
