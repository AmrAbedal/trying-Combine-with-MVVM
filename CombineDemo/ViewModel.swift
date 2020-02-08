//
//  ViewModel.swift
//  CombineDemo
//
//  Created by Amr AbdelWahab on 2/5/20.
//  Copyright © 2020 Orcas. All rights reserved.
//

import Foundation
import Combine

struct Post {
    let name: String
}

public protocol ObservableObject : AnyObject {

    /// The type of publisher that emits before the object has changed.
    associatedtype ObjectWillChangePublisher : Publisher = ObservableObjectPublisher where Self.ObjectWillChangePublisher.Failure == Never

    /// A publisher that emits before the object has changed.
    var objectWillChange: Self.ObjectWillChangePublisher { get }
}


final class ViewModel: ObservableObject  {
    let objectWillChange = PassthroughSubject<Void, Never>()

    private (set) var posts: [Post] = []

       func viewDidLoad() {
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
        objectWillChange.send()

        self.posts = posts
       }
}
