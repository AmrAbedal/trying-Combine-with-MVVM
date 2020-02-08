//
//  FetchPostsDataSource.swift
//  CombineDemo
//
//  Created by Amr AbdelWahab on 2/8/20.
//  Copyright © 2020 Orcas. All rights reserved.
//

import Foundation

protocol FetchPostsDataSource {
    func getPosts() -> [Post]
    
}
class MockFetchPostsDataSource: FetchPostsDataSource {
    func getPosts() -> [Post] {
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
        return posts
        
    }
}

