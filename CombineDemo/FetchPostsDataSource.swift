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
    func getPosts() -> Just<[PostBackEndModel]>
}
class MockFetchPostsDataSource: FetchPostsDataSource {
    func getPosts() -> Just<[PostBackEndModel]> {
        let posts = [PostBackEndModel(name: "Amr", post: "Hello SwiftUI 😀"),
            PostBackEndModel(name: "Amr", post: "Hello Combine 🧑🏽‍💻")
               ]
        return Just.init(posts)
        
    }
}

