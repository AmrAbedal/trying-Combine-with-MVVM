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
    func getPosts() -> Just<[PostScreenData]>
}
class MockFetchPostsDataSource: FetchPostsDataSource {
    func getPosts() -> Just<[PostScreenData]> {
        let posts = [PostScreenData(name: "Amr"),
               PostScreenData(name: "Amr"),
               PostScreenData(name: "Amr"),
               PostScreenData(name: "Amr"),
               PostScreenData(name: "Amr"),
               PostScreenData(name: "Amr"),
               PostScreenData(name: "Amr"),
               PostScreenData(name: "Amr"),
               PostScreenData(name: "Amr")
               ]
        return Just.init(posts)
        
    }
}

