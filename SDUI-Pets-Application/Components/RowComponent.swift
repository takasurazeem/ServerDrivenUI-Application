//
//  RowComponent.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 05/12/2022.
//

import SwiftUI

struct RowComponent: UIComponent {
    
    init(uiModel: RowUIModel) {
        self.uiModel = uiModel
    }
    
    func render() -> AnyView {
        HStack {
            if let imageUrl = uiModel.imageUrl {
                CachedAsyncImage(url: imageUrl) { image in
                    image
                        .resizable()
                        .frame(width: 100, height: 100)
                } placeholder: {
                    ProgressView()
                }
            }
            
            VStack(alignment: .leading) {
                Text(uiModel.title)
                Text(uiModel.subTitle ?? "").opacity(0.4)
                Text(uiModel.description ?? "")
            }
        }
        .padding()
        .toAnyView()
    }
    
    private let uiModel: RowUIModel
    let id = UUID()
}
