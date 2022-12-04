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
        .onAppear {
            URLCache.shared.memoryCapacity = 50_000_000 // ~50 MB memory space
            URLCache.shared.diskCapacity = 1_000_000_000 // ~1GB disk cache space
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
