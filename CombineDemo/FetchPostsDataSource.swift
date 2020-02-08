//
//  FetchPostsDataSource.swift
//  CombineDemo
//
//  Created by Amr AbdelWahab on 2/8/20.
//  Copyright © 2020 Orcas. All rights reserved.
//

import Foundation
import Combine

protocol FetchPostsDataSource {
    func getPosts() -> Just<PostBackEndResponce>
}
class MockFetchPostsDataSource: FetchPostsDataSource {
    func getPosts() -> Just<PostBackEndResponce> {
        let status = Status(code: 200,message: "successful operation")
        let post1 = PostModel(name: "Amr", post: "Hello SwiftUI 😀")
        let post2 = PostModel(name: "Amr", post: "Hello Combine 🧑🏽‍💻")
        let postsResponce = PostBackEndResponce(status: status,data: [post1,post2])
        return Just.init(postsResponce)
        
    }
}

