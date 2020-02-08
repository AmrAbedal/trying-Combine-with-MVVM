//
//  PostBackEndModel.swift
//  CombineDemo
//
//  Created by Amr AbdelWahab on 2/8/20.
//  Copyright © 2020 Orcas. All rights reserved.
//

import Foundation

struct PostBackEndModel {
    let name: String
    let post: String
    var ScreenData: PostScreenData {
        return PostScreenData(name: name)
    }
}
