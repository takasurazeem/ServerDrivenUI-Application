//
//  PetDetailViewModel.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 05/12/2022.
//

import Foundation

extension PetDetailScreen {
    @MainActor
    class ViewModel: ObservableObject {
        
        init(service: NetworkService) {
            self.service = service
        }
        
        func load(petId: Int) async {
            do {
                let screenModel = try await service.load(resource: Constants.ScreenResources.petDetail(petId: petId))
                self.components = try screenModel.buildComponents()
            } catch {
                print(error)
            }
        }
        
        @Published var components: [any UIComponent] = []
        private let service: NetworkService
    }
}
