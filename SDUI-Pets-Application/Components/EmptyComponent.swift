//
//  EmptyComponent.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 05/12/2022.
//

import SwiftUI

struct EmptyComponent: UIComponent {
    func render() -> AnyView {
        EmptyView()
            .toAnyView()
    }
    
    let id = UUID()
}
