//
//  IntermediaryModels.swift
//  Restaurant
//
//  Created by Alona Trekhlib on 4/20/19.
//  Copyright © 2019 Alona Trekhlib. All rights reserved.
//

import Foundation

struct Categories: Codable {
    let categories: [String]
}

struct PreparationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
