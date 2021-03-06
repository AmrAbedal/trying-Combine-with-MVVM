//
//  ViewModel.swift
//  CombineDemo
//
//  Created by Amr AbdelWahab on 2/5/20.
//  Copyright © 2020 Orcas. All rights reserved.
//

import Foundation
import Combine



public protocol ObservableObject : AnyObject {

    /// The type of publisher that emits before the object has changed.
    associatedtype ObjectWillChangePublisher : Publisher = ObservableObjectPublisher where Self.ObjectWillChangePublisher.Failure == Never

    /// A publisher that emits before the object has changed.
    var objectWillChange: Self.ObjectWillChangePublisher { get }
}


final class ViewModel: ObservableObject  {
    private var dataSource: FetchPostsDataSource
    typealias fetchPostsUseCaseType = (FetchPostsDataSource)->(Just<PostsScreenData>)
    private var fetchPostsUseCase: fetchPostsUseCaseType
    init(fetchPostsDataSource: FetchPostsDataSource = MockFetchPostsDataSource(),
        fetchPostUseCase: @escaping fetchPostsUseCaseType = fetchUserPosts) {
        self.dataSource = fetchPostsDataSource
        self.fetchPostsUseCase = fetchPostUseCase
    }
    let objectWillChange = PassthroughSubject<PostsScreenData, Never>()

       func viewDidLoad() {
        self.fetchPostsUseCase(dataSource).sink(receiveValue: {
            [weak self] posts in
            self?.objectWillChange.send(posts)
        })
       }
}
