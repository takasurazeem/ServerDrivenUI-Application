//
//  ContentView.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 02/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = PetListViewModel(service: MockService())
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(viewModel.components, id: \.id) { component in
                    component
                        .render()
                }
            }
            .navigationTitle("Pets")
        }
        .task {
            await viewModel.load()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
