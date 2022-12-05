//
//  Navigator.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 04/12/2022.
//

import SwiftUI

struct SheetView<V: View>: View {
    var body: some View {
        content()
            .onTapGesture {
                isPresented.toggle()
            }
            .sheet(isPresented: $isPresented) {
                destinationView
            }
    }
    
    @State private var isPresented: Bool = false
    let content: () -> V
    let destinationView: AnyView
}

class Navigator {
    static func perform<V: View>(action: Action, payload: Any? = nil, content: @escaping () -> V) -> AnyView {
        var destinationView: AnyView!
        
        switch action.destination {
        case .petDetail :
            if let payload = payload as? CarouselRowUIModel {
                destinationView = PetDetailScreen(petId: payload.petId).toAnyView()
            } else {
                destinationView =  EmptyView()
                    .toAnyView()
            }
        }
        
        switch action.type {
        case .sheet:
            return SheetView(content: {
                content()
            }, destinationView: destinationView)
            .toAnyView()
        case .push:
            fatalError("Not implemented yet")
        }
    }
}
