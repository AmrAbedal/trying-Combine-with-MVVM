//
//  PostModel.swift
//  CombineDemo
//
//  Created by Amr AbdelWahab on 2/8/20.
//  Copyright © 2020 Orcas. All rights reserved.
//

import Foundation

struct PostModel {
    var ScreenData: PostScreenData {
           return PostScreenData(name: name)
       }
    let name: String
    let post: String
}
