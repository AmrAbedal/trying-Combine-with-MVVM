//
//  PostBackEndModel.swift
//  CombineDemo
//
//  Created by Amr AbdelWahab on 2/8/20.
//  Copyright © 2020 Orcas. All rights reserved.
//

import Foundation

struct PostBackEndModel {
    let status: Status
    let data: [Post]
    
    var ScreenData: PostsScreenData {
        if status.code == 200 {
            return .success(data.map({$0.ScreenData}))
        } else {
            return .failed(AppError.businessError("Error"))
        }
    }
}

struct Post {
    var ScreenData: PostScreenData {
           return PostScreenData(name: name)
       }
    let name: String
    let post: String
}
