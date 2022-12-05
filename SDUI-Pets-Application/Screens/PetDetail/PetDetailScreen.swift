//
//  PetDetailScreen.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 05/12/2022.
//

import SwiftUI

struct PetDetailScreen: View {
    private let petId: Int
    @StateObject private var viewModel = ViewModel(service: Webservice())
    
    init(petId: Int) {
        self.petId = petId
    }
    
    var body: some View {
        ScrollView {
            ForEach(viewModel.components, id: \.id) { component in
                component.render()
            }
        }.task {
            await viewModel.load(petId: petId)
        }
    }
}

struct PetDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        PetDetailScreen(petId: 2)
    }
}
