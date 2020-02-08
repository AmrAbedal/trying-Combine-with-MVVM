//
//  ViewController.swift
//  CombineDemo
//
//  Created by Amr AbdelWahab on 2/5/20.
//  Copyright © 2020 Orcas. All rights reserved.
//

import UIKit
import Combine

final class ViewController: UIViewController {
    @IBOutlet weak var postsTableView: UITableView!
    var posts: [PostScreenData] = []
    private var viewModel = ViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel.objectWillChange.sink(receiveValue: { [weak self] posts in
            guard let strongSelf = self
                else { return }
            strongSelf.handleResult(screenData: posts)
        })
        viewModel.viewDidLoad()
    }
    private func handleResult(screenData: PostsScreenData) {
        switch screenData {
        case .loading: showLoadingIndicator()
        case .success(let posts): render(posts: posts)
        case .failed(let error): handleError(error: error)
        }
        
    }
    private func showLoadingIndicator() {
      /// show Loader
    }
    private func handleError(error: AppError) {
        /// hide Laoder
        /// show Error Message
    }
    private func render(posts: [PostScreenData]) {
        /// hide Loader
        self.posts = posts
        postsTableView.reloadData()
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  postCell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        postCell.textLabel?.text = posts[indexPath.row].name
        return postCell
    }
}

