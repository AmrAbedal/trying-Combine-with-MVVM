//
//  FetchPostsUseCase.swift
//  CombineDemo
//
//  Created by Amr AbdelWahab on 2/8/20.
//  Copyright © 2020 Orcas. All rights reserved.
//

import Foundation
import Combine

func fetchUserPosts(dataSource: FetchPostsDataSource) -> Just<[Post]> {
    return dataSource.getPosts()
}

