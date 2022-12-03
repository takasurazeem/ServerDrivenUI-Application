//
//  PetListViewModel.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 02/12/2022.
//

import Foundation

@MainActor
class PetListViewModel: ObservableObject {
    
    internal init(service: Webservice) {
        self.service = service
    }
    
    func load() async {
        do {
            let screenModel = try await service.load(resource: Constants.Resource.petListing)
            components = try screenModel.buildComponents()
        } catch {
            print(error)
        }
    }
    
    @Published var components: [any UIComponent] = []
    private let service: Webservice
}
