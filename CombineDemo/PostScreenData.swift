//
//  ScreenDataUser.swift
//  CombineDemo
//
//  Created by Amr AbdelWahab on 2/8/20.
//  Copyright © 2020 Orcas. All rights reserved.
//

import Foundation

enum PostsScreenData {
    case loading, success([PostScreenData]), failed(AppError)
}

struct PostScreenData {
    let name: String
}

enum AppError {
    case networkError,serverDown,businessError(String)
}
