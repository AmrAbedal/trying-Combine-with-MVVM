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
    func getPosts() -> Just<[Post]>
}
class MockFetchPostsDataSource: FetchPostsDataSource {
    func getPosts() -> Just<[Post]> {
        let posts = [Post(name: "Amr"),
               Post(name: "Amr"),
               Post(name: "Amr"),
               Post(name: "Amr"),
               Post(name: "Amr"),
               Post(name: "Amr"),
               Post(name: "Amr"),
               Post(name: "Amr"),
               Post(name: "Amr")
               ]
        return Just.init(posts)
        
    }
}

