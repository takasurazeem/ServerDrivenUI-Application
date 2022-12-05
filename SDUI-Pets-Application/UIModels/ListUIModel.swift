//
//  ListUIModel.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 05/12/2022.
//

import Foundation

struct RowUIModel: Decodable, Identifiable {
    let id: Int
    let title: String
    let subTitle: String?
    let imageUrl: URL?
    let description: String?
}

struct ListUIModel: Decodable {
    let rows: [RowUIModel]
    let action: Action
}
