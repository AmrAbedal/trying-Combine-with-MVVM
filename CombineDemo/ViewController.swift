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
    var posts: [Post] = []
    private var viewModel = ViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel.objectWillChange.sink(receiveValue: { [weak self]  in
                  guard let strongSelf = self
                      else { return }
            strongSelf.render(posts: strongSelf.viewModel.posts )
            })
        viewModel.viewDidLoad()
    }
    private func render(posts: [Post]) {
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

