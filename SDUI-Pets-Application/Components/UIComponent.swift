//
//  UIComponent.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 02/12/2022.
//

import SwiftUI

protocol UIComponent: Identifiable {
    var id: UUID { get }
    
    func render() -> AnyView
}
