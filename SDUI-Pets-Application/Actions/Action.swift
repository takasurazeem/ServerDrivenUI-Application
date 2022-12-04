//
//  Action.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 04/12/2022.
//

import Foundation

enum ActionType: String, Decodable {
    case sheet
    case push
}


struct Action: Decodable {
    let type: ActionType
    let destination: Route
}
