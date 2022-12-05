//
//  CarouselView.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 04/12/2022.
//

import SwiftUI

struct CarouselView: View {
    private let uiModel: CarouselUIModel
    init(uiModel: CarouselUIModel) {
        self.uiModel = uiModel
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(uiModel.items) { item in
                    Navigator.perform(action: uiModel.action, payload: item) {
                        CachedAsyncImage(url: item.imageUrl) { image in
                            image
                                .resizable()
                                .frame(width: 200, height: 200)
                                .scaledToFit()
                        } placeholder: {
                            ProgressView()
                        }
                    }
                }
            }
        }
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView(uiModel: CarouselUIModel(
            items: Array(
                repeating: CarouselRowUIModel(petId: 1, imageUrl: "https://images.unsplash.com/photo-1589883661923-6476cb0ae9f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2574&q=80".asURL),
                count: 5
            ), action: Action(type: .sheet, destination: .petDetail)))
    }
}

