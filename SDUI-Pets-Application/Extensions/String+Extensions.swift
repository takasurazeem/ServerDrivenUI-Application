//
//  String+Extensions.swift
//  SDUI-Pets-Application
//
//  Created by Takasur Azeem on 04/12/2022.
//

import Foundation

extension String {
    var asURL: URL {
        URL(string: self)!
    }
}
